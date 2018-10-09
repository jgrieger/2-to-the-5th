// cerner_2^5_2018
/*
    Dependencies in Cargo.toml:
        [dependencies]
        csv = "1.0.2"

    Call in main.rs like:
        extern crate csv;
        mod CsvParser;
        fn main() { CsvParser::parseCsv().unwrap(); }
*/

use std::error::Error;
use csv::ReaderBuilder;

pub fn parseCsv() -> Result<(), Box<Error>> {
    let mut csvReader = ReaderBuilder::new().from_path("input.csv")?;
    let mut rowCounter = 0;

    for result in csvReader.records() {
        let record = result?;

        println!("- Row: {}", rowCounter);

        for i in 0..record.len() {
            println!("-- Column {}: {}", i, &record[i]);
        }

        rowCounter += 1;
    }

    Ok(())
}

/*
    Output for input.csv:
        - Row: 0
        -- Column 0: C#
        -- Column 1: compiled
        - Row: 1
        -- Column 0: TypeScript
        -- Column 1: compiled
        - Row: 2
        -- Column 0: VB.NET
        -- Column 1: compiled
        - Row: 3
        -- Column 0: PHP
        -- Column 1: interpreted
        - Row: 4
        -- Column 0: ook
        -- Column 1: interpreted
        - Row: 5
        -- Column 0: C++
        -- Column 1: compiled
*/