import React from 'react'
import { useRoutes } from "react-router-dom";
import MainLayout from "./layouts/MainLayout.jsx";
import FirstPage from "./pages/FirstPage.jsx";
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  let routes = [
    {
      element: <MainLayout/>,
      children: [
        { path: '/test', element: <FirstPage/> }
      ]
    }
  ]

  const router = useRoutes(routes);

  return (
    <>{router}</>
  )
}

export default App
