# 🍿 Movie Watch List

A simple app where users can create different watch lists for movies that they want to watch.

<br>
<img width="1404" alt="Screen Shot 2023-09-07 at 20 10 52" src="https://github.com/KevinMCollier/rails-watch-list/assets/115050264/a1a8336d-3540-4a87-826d-ea6ed871bb2c">
<img width="1424" alt="Screen Shot 2023-09-07 at 19 58 24" src="https://github.com/KevinMCollier/rails-watch-list/assets/115050264/7a73c395-015d-4637-8f02-6bc6667fa230">

## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License
