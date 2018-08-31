# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all

Song.create([
 {name: 'Milennial Blues', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/01+Millennial+Blues.mp3'},
 {name: 'Rainbow Girl', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/02+Rainbow+Girl.mp3'},
 {name: 'Just A Dream', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/03+Just+A+Dream.mp3'},
 {name: 'Only Acting', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/04+Acting+Blue.mp3'},
 {name: 'Motivation', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/05+Motivation.mp3'},
 {name: 'Up On Mulholland', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/06+Up+On+Mulholland.mp3'},
 {name: 'The Mermaid', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/07+The+Mermaid.mp3'},
 {name: 'Floating', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/08+Floating.mp3'},
 {name: 'Lazy Moon', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/09+Lazy+Moon.mp3'},
 {name: 'Dollar In My Wallet', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/10+Dollar+In+My+Wallet.mp3'},
 {name: 'Follow The Wild', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/11+Follow+the+Wild.mp3'},
 {name: 'Goodbye Summer', artistName: 'Kent van Kuller', album: 'Only Acting', genre: 'Rock', releaseDate: '11/24/2017', link: 'https://s3-us-west-1.amazonaws.com/guitarguy92/12+Goodbye+Summer.mp3'}
])