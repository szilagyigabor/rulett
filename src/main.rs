use rand::distributions::{Distribution, Uniform};
//use std::env;
use clap::{Parser, ArgEnum};
use std::fs::File;
use std::io::Write;

#[derive(Copy, Clone, Debug, PartialEq, Eq, PartialOrd, Ord, ArgEnum)]
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
}

pub fn bet(amount: i64, bet_type: BetType, outcome: i64) -> i64 {
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
	/// Bet Type (StraightUp, Split, Street, Corner, Line, Column, Dozen, Color, EvenOdd, LowHigh)
	#[clap(short, value_enum)]
	pub bet_type: BetType,
	/// Number of rounds to play
	#[clap(short)]
	rounds: i64,
}

fn main() {

	let args = Args::parse();
	
	let range = Uniform::from(0..=36);
	let mut rng = rand::thread_rng();
	let mut sum = 0;

	let rounds = args.rounds;
	let amount = 1;
	let bet_type = args.bet_type;

	let path = "penztarca.txt";
	let mut output = File::create(path);

	let mut num;
	for _ in 0..rounds {
		num = range.sample(&mut rng);
		sum += bet(amount, bet_type, num);
		println!("{}", sum);
		write!(output, "{}", sum);
	}
}