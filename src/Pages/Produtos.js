import { useState, useEffect } from 'react';

import Produto from '../Components/Produto'
import { Container, Row } from "react-bootstrap"

export default function Produtos() {
    const [ produtos, setProdutos ] = useState([]);
    
    useEffect(async () => {
        const resposta = await fetch("http://localhost:4000")
        const dados = await resposta.json()
        setProdutos(dados);
    }, []);

    return (
        <Container>
            <Row>
                {produtos && produtos.map(item => <Produto categoria={item.categoria} descricao={item.descricao} preco={item.preco} 
                imagem={item.imagem} />)}
            </Row>
        </Container>  
    )
}