# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all

Song.create([
    {name: 'Rainbow Girl', artistName: 'Kent van Kuller', genre: 'Rock', sku: 2, album: 'Only Acting', releaseDate: '11/24/2018', link: 'link'},
    {name: 'Only Acting', artistName: 'Kent van Kuller', genre: 'Rock', sku: 4, album: 'Only Acting', releaseDate: '11/24/2018', link: 'link'},
    {name: 'Milennial Blues', artistName: 'Kent van Kuller', genre: 'Rock', sku: 1, album: 'Only Acting', releaseDate: '11/24/2018', link: 'link'}
])