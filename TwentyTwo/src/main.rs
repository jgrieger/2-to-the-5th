extern crate csv;

mod CsvParser;

fn main() { CsvParser::parseCsv().unwrap(); }