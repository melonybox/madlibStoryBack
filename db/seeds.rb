# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
History.destroy_all
Madlib.destroy_all

Madlib.reset_pk_sequence
History.reset_pk_sequence

Madlib.create(chapter: "01", title: "Hello", template: "Time to cast a <spell> in the name of <person>.", placeHolderEmpty: "{\"<spell>\": \"\", \"<person>\": \"\"}")
Madlib.create(chapter: "02", title: "Aron", template: "Did you eat <food> at the time of dawn. Say hello to <person> after. They are going to <place> as well.", placeHolderEmpty: "{\"<food>\": \"\", \"<person>\": \"\", \"<place>\": \"\"}")
Madlib.create(chapter: "03", title: "Blork", template: "Why did the <animal> cross the road? To visit <place>.", placeHolderEmpty: "{\"<animal>\": \"\", \"<place>\": \"\"}")
