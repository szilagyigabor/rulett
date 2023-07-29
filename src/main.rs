use rand::distributions::{Distribution, Uniform};
//use std::env;
use clap::{Parser, ArgEnum, ArgAction};
use std::fs::File;
use std::io::LineWriter;
use std::io::prelude::*;
use std::cmp;
use strum_macros;

#[derive(Copy, Clone, Debug, PartialEq, Eq, PartialOrd, Ord, ArgEnum, strum_macros::Display)]
pub enum BetType {
	StraightUp,
	Split,
	Street,
	Corner,
	Line,
	Column,
	Dozen,
	Color,
	EvenOdd,
	LowHigh,
	All,
}

pub fn bet(amount: i64, bet_type: &BetType, outcome: i64) -> i64 {
	let multiplier;
	let max_to_win;
	match bet_type {
		BetType::StraightUp	=> { multiplier = 35;	max_to_win = 0;		}
		BetType::Split		=> { multiplier = 17;	max_to_win = 1;		}
		BetType::Street		=> { multiplier = 11;	max_to_win = 2;		}
		BetType::Corner		=> { multiplier = 8;	max_to_win = 3;		}
		BetType::Line		=> { multiplier = 5;	max_to_win = 5;		}
		BetType::Column		=> { multiplier = 2;	max_to_win = 11;	}
		BetType::Dozen		=> { multiplier = 2;	max_to_win = 11;	}
		BetType::Color		=> { multiplier = 1;	max_to_win = 17;	}
		BetType::EvenOdd	=> { multiplier = 1;	max_to_win = 17;	}
		BetType::LowHigh	=> { multiplier = 1;	max_to_win = 17;	}
		BetType::All		=> { multiplier = 0;	max_to_win = 0;		}
	}
	
	if outcome > max_to_win {
		-amount
	}
	else {
		amount*multiplier
	}
}

#[derive(Parser, Debug)]
#[clap(about)]
struct Args {
	#[clap(short, value_enum)]
	pub bet_type: BetType,
	/// Number of rounds to play
	#[clap(short)]
	rounds: i64,
    /// Peti's tactic
    #[clap(long, short, action=ArgAction::SetTrue)]
    tactic: bool,
}

fn main() -> std::io::Result<()> {
	// init things
	let args = Args::parse();
	let range = Uniform::from(0..=36);
	let mut rng = rand::thread_rng();
	let mut sum = 0;
    let tactic = args.tactic;

	// read arguments
	let rounds = args.rounds;
	let print_interval = std::cmp::max(1,args.rounds/1000);
	let default_amount = 1;
    let mut amount = default_amount;
	let bet_type = args.bet_type;
	
	let path = bet_type.to_string() + if tactic { "_tactic" } else { "" } + "_" + &rounds.to_string() + ".txt";
	let file = File::create(path)?;
	let mut file = LineWriter::new(file);
	
	let mut num;
    let mut change;
    let mut minsum = 0;
	
	// print initial 0 sum
	file.write_all(b"0");
	file.write_all(b"\t");
	file.write_all(b"0");
	file.write_all(b"\n");
	
	// generate
	for round in 0..=rounds {
		num = range.sample(&mut rng);
		change = bet(amount, &bet_type, num);
        sum += change;
        if change < 0 && tactic {
            amount *= 2;
            minsum = std::cmp::min(sum, minsum);
        }
        else {
            amount = default_amount;
        }
		if round%print_interval == 0 {
			file.write_all(round.to_string().as_bytes());
			file.write_all(b"\t");
			file.write_all({if tactic {minsum} else {sum}}.to_string().as_bytes());
			file.write_all(b"\n");
            minsum = sum;
		}
	}
	Ok(())
}
