use std::thread;
use chrono::Utc;

fn main() {
    let jetzt = Utc::now();

    println!("\n------------------------------------------------");
    for i in 0..50 {
        let spc: f32 = 40.0 + f32::sin((i as f32) * 0.2) * 40.0;
        let s = str::repeat(" ", spc as usize);
        thread::sleep(std::time::Duration::from_millis(100));
        println!("{}{}", s, jetzt.format("%Y-%m-%d %H:%M:%S"));
    }
    println!("------------------------------------------------\n");
}
