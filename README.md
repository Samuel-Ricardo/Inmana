# Inmana 

<p align="center"><a href="https://github.com/joaopealves/inmana/" ><img width="400px" src="https://github.com/joaopealves/inmana/raw/main/git-docs/Inmana-logo.png"/><a></p>
<h4 align="center">NextLevelWeek 5.0 🚀</h4>
<h4 align="center">Application made during NLW, event promoted by <a href="https://www.instagram.com/rocketseat_oficial/"> @Rocketseat_Oficial </a> </h4>


<p align="center">
  <a href="#project">Project</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#techs">Technologies</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#run-project">Run</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
  <a href="#run-test">Run Test</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
  <a href="#author">Author</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="cCredits">Credits</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
</p>


<h1 align="center">
  <a href="https://www.linkedin.com/in/samuel-ricardo-cabral/">
    <img alt="Linkedin" src="https://img.shields.io/badge/LinkedIn-1781EB?style=for-the-badge&logo=linkedin&logoColor=fff&labelColor=1781EB)%5D">
  </a>
  <a href="./LICENSE">
    <img alt="GitHub license" src="https://img.shields.io/badge/License%20MIT-5eb85e?style=for-the-badge&logo=&logoColor=2ee62e&labelColor=1781EB)%5D">
  </a>
</h1>


<p align="center" id="project">
 Inmana is an Elixir API developed at Next Level Week, it is a supply manager, you can register your establishment and its supplies and receive emails weekly with the supplies that are close to the expiration date.
</p>


<br>

<h2 id="techs">
  🚀 Technologies
</h2>

Main Technologies:

- [Elixir](https://elixir-lang.org/)
- [Phoenix Framework](https://www.phoenixframework.org/)
- [Bcrypt](https://hex.pm/packages/bcrypt_elixir)
- [Credo](https://hex.pm/packages/credo)
- [ExCoveralls](https://hex.pm/packages/excoveralls)
- [Dotenv](https://github.com/avdi/dotenv_elixir)
- [Bamboo](https://github.com/thoughtbot/bamboo)
<br>
<br>

<h2 id="run-project">
  :zap: Run Project
</h2>

<br>

## :shipit: What I need to start?

<br>

## <img width="45px" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/elixir/elixir-original.svg"></img> Elixir Language

  <p> It is a :brazil: Brazilian functional programming language, perfect for scalable applications and tolerant of errors. It is a good language to work with multi tasks, competition, real time and others </p>

- [Install Elixir](https://elixir-lang.org/install.html)

  <p> <b>OBS</b>: Elixir need of <a href="https://www.erlang.org/">Earlang</a>, by default the Elixir Installer installs Erlang, but if necessary, install separately by click on this image </p>
  
  > <a href="https://www.erlang.org/downloads"> <img width="60px" src="https://www.vectorlogo.zone/logos/erlang/erlang-official.svg"></img> </a>

<br>

## <img width="60px" src="https://seeklogo.com/images/P/phoenix-logo-D15F067911-seeklogo.com.png"></img> Phoenix Framework

  <p> Build rich, interactive web applications quickly, with less code and fewer moving parts. Join our growing community of developers using Phoenix to craft APIs, HTML5 apps and more, for fun or at scale. </p>

- [Phoenix Framework](https://hexdocs.pm/phoenix/installation.html)

  <p> install Credo separately by click on this image </p>
 
  > <a href="https://github.com/rrrene/credo#installation-and-usage"> <img width="60px" src="https://hexdocs.pm/credo/assets/logo.png"></img> </a>
 
 <br>
 
  ## <img width="150px" src="https://user-images.githubusercontent.com/22394/39895001-b13a9c9a-5476-11e8-9c58-f5fc5f09b697.png"></img> 
 
  <p>Bamboo is part of the thoughtbot Elixir family of projects. Is a easy way to send emails whit elixir. designed to be simple and powerful.</p>
  
  <p> Install by click on this Image: </p>
  
  > <a href="https://github.com/thoughtbot/bamboo#installation"> <img width="80px" src="https://user-images.githubusercontent.com/22394/39895001-b13a9c9a-5476-11e8-9c58-f5fc5f09b697.png" > <img/> </a>
 
 
 <br>
 
 ## <img width="45px" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original.svg"></img> PostgresSQL Database
 
  <p> PostgreSQL is a powerful, open source object-relational database system with over 30 years of active development that has earned it a strong reputation for reliability, feature robustness, and performance. See more: <a href="https://www.postgresql.org/"> PostgresSQL - Home </a></p>
 
  <p> Install by click on this Image: </p>
  
  > <a href="https://www.postgresql.org/download/"> <img width="60px" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" > <img/> </a>
 
<br>
<br>

## :electron: Start Application

### Open Your Git Terminal and Clone This Repositore:

  ``` git
  
  $ git clone "https://github.com/Samuel-Ricardo/RocketPay"
  
  ```
  
### Make pull:

  ``` git
  
  $ git pull "https://github.com/Samuel-Ricardo/RocketPay"
  
  ```
  
### Open the absolut path of project in your terminal and go to rocketpay:

  ``` 
  
  $ cd rocketpay
  
  ```
  
### Install Dependencies:

  ``` elixir
  
  mix deps.get
  
  ```
  
### By Guarantee, Compile Dependencies:

  ``` elixir
  
  mix deps.recompile
  
  ```
 
### Shortcut to create the Database and run the migrations:

  ``` elixir
  
  mix ecto.setup
  
  ```
  
  ###
  
## If you don't want to use a shortcut
  
  
### Create Database:

  ``` elixir
  
  mix ecto.create
  
  ```

### Create Migration:

  ``` elixir
  
  mix ecto.gen.migration create_TableName_table
  
  ```

### Run Migration:

  ``` elixir
  
  mix ecto.migration 
  
  ```

#### if you want, run the tests

  ``` elixir
  
  mix test 
  
  ```
  

### Start the server

  ``` elixir
  
  mix phx.server 
  
  ```
  
- <p> Now Your server is running in <b><a href="http://localhost:4000/">localhost:4000</a></b> </p>
  
- <p> If you want see details of your application, access the dashboard of Phoenix: <b><a href="http://localhost:4000/dashboard/home">localhost:4000/dashboard/home</a><b/> </p>


### if need Drop Database:

  ``` elixir
  
  mix ecto.drop
  
  ```

  <br>
  <br>
  
  
<h2 id="author">
  :octocat: Author
</h2>

<br>

<a href="https://www.linkedin.com/in/samuel-ricardo-cabral/">

  <img width="250px" src="https://github.com/Samuel-Ricardo/RocketPay/blob/master/readmefile/github.jpg"/>

  <br>

   <p><b>Samuel Ricardo</b></p>
   
</a>

<h1 align="rigth">
  
<a href="https://www.linkedin.com/in/samuel-ricardo-cabral/">
  
  <img width = "115px" src="https://img.shields.io/badge/Linkedin-1781EB?color=blue&style=for-the-badge&logo=LinkedIn" /> 
  
<a>

<a href="https://www.instagram.com/samuel_ricardo.ex/">
  
  <img width = "130px" src="https://img.shields.io/badge/Instagram-1781EB?color=purple&style=for-the-badge&logo=Instagram" /> 
  
<a>
  
<h1>

<br>
<br>

<h2 id="credits">
  :octocat: Credits
</h2>

<p> This readme is based on: </p>

  - [João Pedro Alves](https://github.com/joaopealves/Rocketpay/blob/main/README.md)
