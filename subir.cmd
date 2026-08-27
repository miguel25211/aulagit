@echo off
chcp 65001 >nul
title 🚀 Aula 7 - Backup GitHub
color 0B

cls

echo.
echo ============================================================
echo                 🚀 PROJETO AULA 7
echo                  📦 BACKUP ^& GITHUB
echo ============================================================
echo.

echo 📂 Pasta do projeto:
cd
echo.

echo 🌿 Branch atual:
git branch --show-current
echo.

echo 🔗 Repositorio remoto:
git remote -v
echo.

echo ============================================================
echo                     📊 STATUS DO PROJETO
echo ============================================================
echo.

git status --short

echo.
echo ============================================================
echo                   📥 ADICIONANDO ARQUIVOS
echo ============================================================
echo.

git add .

if errorlevel 1 (
    echo.
    echo ❌ ERRO ao adicionar os arquivos!
    pause
    exit /b 1
)

echo ✅ Arquivos adicionados com sucesso!
echo.

echo ============================================================
echo                     💾 CRIANDO COMMIT
echo ============================================================
echo.

set /p mensagem="📝 Digite a mensagem do commit: "

if "%mensagem%"=="" (
    set mensagem=Atualizacao do projeto Aula 7
)

git commit -m "%mensagem%"

if errorlevel 1 (
    echo.
    echo ⚠️ Nenhum commit foi criado.
    echo Talvez nao existam alteracoes para enviar.
    echo.
)

echo.
echo ============================================================
echo                     ☁️ ENVIANDO PARA GITHUB
echo ============================================================
echo.

git branch -M main
git push -u origin main

if errorlevel 1 (
    echo.
    echo ============================================================
    echo                    ❌ ERRO NO PUSH
    echo ============================================================
    echo.
    echo Verifique:
    echo   🔑 Sua chave SSH
    echo   🌐 Sua conexao com a internet
    echo   🔗 O repositorio remoto
    echo   👤 Suas permissoes no GitHub
    echo.
    pause
    exit /b 1
)

echo.
echo ============================================================
echo                     ✅ SUCESSO!
echo ============================================================
echo.
echo 🚀 Projeto enviado para o GitHub!
echo.
echo 🔗 Repositorio:
echo https://github.com/miguel25211/aulagit
echo.

echo 📅 Data e hora:
echo %date% %time%
echo.

echo 🌿 Branch:
git branch --show-current
echo.

echo ============================================================
echo                  📊 STATUS FINAL
echo ============================================================
echo.

git status

echo.
echo 🌐 Abrindo o repositorio no navegador...
start https://github.com/miguel25211/aulagit

echo.
echo ============================================================
echo                🎉 BACKUP FINALIZADO!
echo ============================================================
echo.
pause
