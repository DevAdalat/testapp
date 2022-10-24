use std::{thread::sleep, time::Duration};

pub fn greet(name: String) -> String {
    format!("Hello {} from rust", name)
}

pub fn list_data() -> Vec<String> {
    sleep(Duration::from_secs(5));
    vec!["Hello".to_string(), "Adalat".to_string()]
}
