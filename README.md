<h1 align="center">Starship — Jogo 2D</h1>

<p align="center">
  Shoot 'em up estilo arcade desenvolvido na Godot Engine — controle uma nave, atire e enfrente inimigos.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Godot-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white"/>
  <img src="https://img.shields.io/badge/GDScript-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white"/>
</p>

## 📋 Sobre o projeto

**Starship** é um jogo 2D no estilo **shoot 'em up** desenvolvido na Godot Engine. O jogador pilota uma nave, atira em inimigos e tenta sobreviver o maior tempo possível, com fundo em parallax para sensação de movimento contínuo.

## 🛠️ Tecnologias

- **Godot Engine** 3.x
- **GDScript**

## 📁 Estrutura

```
starship/
├── project.godot              # Configuração do projeto
├── Jogo.tscn / Jogo.gd        # Cena/script principais
├── Nave.tscn / Nave.gd        # Nave do jogador
├── Bala.tscn / Bala.gd        # Projéteis
├── Enemy.tscn / Enemy.gd      # Inimigos
├── ParallaxBackground.gd      # Fundo em parallax
├── sprites/                   # Recursos visuais
└── fonts/                     # Fontes
```

## ✅ Pré-requisitos

- [Godot Engine](https://godotengine.org/download) 3.x

## 🚀 Como executar

1. Abra a Godot Engine.
2. Importe o projeto apontando para `starship/project.godot`.
3. Pressione **F5** para jogar.

## 🎮 Como jogar

- **Setas** ou **WASD** — mover a nave
- **Espaço** — atirar

---

Desenvolvido por [Gabriel Fernandes](https://github.com/Gabrielfsg) — estudo prático de game development com Godot.
