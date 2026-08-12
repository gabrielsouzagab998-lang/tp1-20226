<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Exemplo - Exibir e Esconder Listas</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      padding: 20px;
    }

    
    .escondido {
      display: none;
    }

    
    ul li {
      cursor: pointer;
      padding: 4px 8px;
      margin: 2px 0;
      user-select: none;
    }

    ul li:hover {
      background-color: #f0f0f0;
    }

    button {
      padding: 10px 16px;
      font-size: 14px;
      cursor: pointer;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

  
  <button id="btnToggle">Esconder tudo</button>

  <h3>Lista de Frutas</h3>
  <ul>
    <li>Maçã (clique para ocultar individualmente)</li>
    <li>Banana</li>
    <li>Laranja</li>
  </ul>

  <h3>Lista de Tarefas</h3>
  <ul>
    <li>Estudar JavaScript</li>
    <li>Fazer exercícios</li>
    <li>Revisar o código</li>
  </ul>

  <script>
    const btnToggle = document.getElementById('btnToggle');
    
    const listItems = document.querySelectorAll('ul li');

    
    function atualizarEstadoBotao() {
      const totalItens = listItems.length;
      
      
      const itensVisiveis = Array.from(listItems).filter(
        item => !item.classList.contains('escondido')
      ).length;

      if (itensVisiveis === 0) {
        
        btnToggle.textContent = 'Exibir tudo';
      } else if (itensVisiveis === totalItens) {
        
        btnToggle.textContent = 'Esconder tudo';
      }
    }

    
    btnToggle.addEventListener('click', () => {
      
      const deveExibir = btnToggle.textContent === 'Exibir tudo';

      listItems.forEach(item => {
        if (deveExibir) {
          item.classList.remove('escondido');
        } else {
          item.classList.add('escondido');
        }
      });

   
      atualizarEstadoBotao();
    });

    
    listItems.forEach(item => {
      item.addEventListener('click', () => {
        item.classList.toggle('escondido');
       
        atualizarEstadoBotao();
      });
    });

    
    atualizarEstadoBotao();
  </script>

</body>
</html>
