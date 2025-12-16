use std::net::Ipv4Addr;

fn main() {
    let ip = u32::from(Ipv4Addr::new(255, 255, 255, 255));

    for m in 0..=32 {
        let mask = if m == 0 { 0 } else { u32::MAX << (32 - m) };
        println!("{} {}", m, Ipv4Addr::from(ip & mask));
    }
}
