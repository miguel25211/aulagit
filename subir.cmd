@echo off
chcp 65001 >nul
title Aula 7 - Backup GitHub
color 0B

cls

echo.
echo ============================================================
echo                    PROJETO AULA 7
echo                     BACKUP GITHUB
echo ============================================================
echo.

echo Pasta atual:
cd
echo.

echo Branch:
git branch --show-current
echo.

echo ============================================================
echo                    ATUALIZANDO README
echo ============================================================
echo.

(
echo # 🚀 Aula 7 - Projeto MVC em PHP
echo.
echo Projeto desenvolvido durante as aulas de PHP utilizando a arquitetura **MVC**, **PDO**, **MySQL** e **Composer**.
echo.
echo ---
echo.
echo ## 🛠️ Tecnologias
echo.
echo - 🐘 PHP 8.2+
echo - 🗄️ MySQL
echo - 🔌 PDO
echo - 📦 Composer
echo - 🏗️ MVC
echo - 🔄 PSR-4 Autoload
echo.
echo ---
echo.
echo ## 📁 Estrutura do projeto
echo.
echo ```text
echo aula7/
echo ├── public/
echo │   ├── index.php
echo │   ├── layout.php
echo │   ├── footer.php
echo │   └── teste.php
echo │
echo ├── src/
echo │   ├── Config/
echo │   ├── Controller/
echo │   │   └── HomeController.php
echo │   ├── DAO/
echo │   ├── Model/
echo │   ├── View/
echo │   └── Database.php
echo │
echo ├── vendor/
echo ├── composer.json
echo ├── composer.lock
echo ├── bkp.cmd
echo └── README.md
echo ```
echo.
echo ---
echo.
echo ## 🏗️ Arquitetura MVC
echo.
echo ```text
echo Navegador
echo     ^|
echo     v
echo public/index.php
echo     ^|
echo     v
echo Controller
echo     ^|
echo     v
echo Model
echo     ^|
echo     v
echo Database / MySQL
echo     ^|
echo     v
echo View
echo     ^|
echo     v
echo Navegador
echo ```
echo.
echo ---
echo.
echo ## 🗄️ Banco de dados
echo.
echo Banco utilizado: **aula6**
echo.
echo A conexão com o banco de dados utiliza **PDO**.
echo.
echo ---
echo.
echo ## 📦 Composer
echo.
echo O projeto utiliza Composer para gerenciamento de dependências e autoload PSR-4.
echo.
echo ```json
echo "autoload": {
echo     "psr-4": {
echo         "App\\": "src/"
echo     }
echo }
echo ```
echo.
echo Para atualizar o autoload:
echo.
echo ```bash
echo composer dump-autoload
echo ```
echo.
echo ---
echo.
echo ## ▶️ Executando o projeto
echo.
echo Instale as dependências:
echo.
echo ```bash
echo composer install
echo ```
echo.
echo Inicie o servidor PHP:
echo.
echo ```bash
echo php -S localhost:8000 -t public
echo ```
echo.
echo Acesse:
echo.
echo http://localhost:8000
echo.
echo ---
echo.
echo ## 📚 Conteúdo estudado
echo.
echo - [x] Estrutura MVC
echo - [x] Composer
echo - [x] PSR-4
echo - [x] Namespaces
echo - [x] PDO
echo - [x] MySQL
echo - [x] Conexão com banco de dados
echo - [x] Controllers
echo - [x] Models
echo - [ ] DAO
echo - [ ] CRUD
echo.
echo ---
echo.
echo ## 🔗 Repositório
echo.
echo https://github.com/miguel25211/aulagit
echo.
echo ---
echo.
echo ## 👨‍💻 Projeto de estudos
echo.
echo Projeto desenvolvido para praticar **PHP**, **MVC**, **MySQL**, **PDO** e **Composer**.
echo.
echo 🚀 Aula 7
) > README.md

if errorlevel 1 (
    echo.
    echo ❌ ERRO ao criar o README.md
    echo.
    pause
    exit /b 1
)

echo ✅ README.md atualizado!
echo.

echo ============================================================
echo                     GIT ADD
echo ============================================================
echo.

git add .

if errorlevel 1 (
    echo.
    echo ❌ ERRO no git add!
    echo.
    pause
    exit /b 1
)

echo ✅ Arquivos adicionados!
echo.

echo ============================================================
echo                    CRIANDO COMMIT
echo ============================================================
echo.

set "mensagem="
set /p "mensagem=📝 Digite a mensagem do commit: "

if "%mensagem%"=="" set "mensagem=Atualizacao do projeto Aula 7"

git commit -m "%mensagem%"

echo.

echo ============================================================
echo                    ENVIANDO PARA GITHUB
echo ============================================================
echo.

git branch -M main
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ ERRO ao enviar para o GitHub!
    echo.
    echo Verifique o remote:
    git remote -v
    echo.
    pause
    exit /b 1
)

echo.
echo ============================================================
echo                       🎉 SUCESSO!
echo ============================================================
echo.
echo ✅ README.md atualizado
echo ✅ Git add realizado
echo ✅ Commit realizado
echo ✅ Push realizado
echo.
echo 🔗 Repositorio:
echo https://github.com/miguel25211/aulagit
echo.
echo 📅 Data: %date%
echo 🕐 Hora: %time%
echo.

start "" "https://github.com/miguel25211/aulagit"

echo ============================================================
echo                  🚀 BACKUP FINALIZADO!
echo ============================================================
echo.

pause
