<!DOCTYPE html>
<html lang="pt-BR" class="h-full">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phoenix Fibra - Internet de Alta Velocidade</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            box-sizing: border-box;
        }
        .product-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
        }
        .cart-badge {
            animation: pulse 2s infinite;
        }
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }
    </style>
</head>
<body class="h-full bg-gradient-to-br from-orange-50 to-red-100 font-sans">
    <!-- Header -->
    <header class="bg-white shadow-lg fixed top-0 left-0 right-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center py-4">
                <div class="flex items-center">
                    <div class="text-2xl font-bold text-orange-600">🔥 Phoenix Fibra</div>
                </div>
                <nav class="hidden md:flex space-x-8">
                    <a href="#home" class="text-gray-700 hover:text-orange-600 font-medium">Início</a>
                    <a href="#products" class="text-gray-700 hover:text-orange-600 font-medium">Planos</a>
                    <a href="#business-plans" class="text-gray-700 hover:text-orange-600 font-medium">Empresarial</a>
                    <a href="#about" class="text-gray-700 hover:text-orange-600 font-medium">Sobre</a>
                    <a href="#contact" class="text-gray-700 hover:text-orange-600 font-medium">Contato</a>
                </nav>
                <div class="flex items-center space-x-4">
                    <button id="cart-btn" class="relative bg-orange-600 text-white px-4 py-2 rounded-lg hover:bg-orange-700 transition-colors">
                        📋 Contratar
                        <span id="cart-count" class="absolute -top-2 -right-2 bg-red-500 text-white text-xs rounded-full h-6 w-6 flex items-center justify-center cart-badge hidden">0</span>
                    </button>
                </div>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section id="home" class="py-20 px-4 pt-32">
        <div class="max-w-7xl mx-auto text-center">
            <h1 class="text-5xl font-bold text-gray-900 mb-6">
                Internet <span class="text-orange-600">Fibra Óptica</span> de Alta Velocidade
            </h1>
            <p class="text-xl text-gray-600 mb-8 max-w-3xl mx-auto">
                Conecte-se ao futuro com nossa internet ultra-rápida. Planos a partir de R$ 100,00 com velocidade garantida e suporte 24h. <span class="text-green-600 font-semibold">R$ 10,00 de desconto no cartão de crédito!</span>
            </p>
            <button onclick="document.getElementById('products').scrollIntoView({behavior: 'smooth'})" 
                    class="bg-orange-600 text-white px-8 py-4 rounded-lg text-lg font-semibold hover:bg-orange-700 transition-colors">
                Ver Planos
            </button>
        </div>
    </section>

    <!-- Products Section -->
    <section id="products" class="py-16 px-4 bg-white">
        <div class="max-w-7xl mx-auto">
            <h2 class="text-4xl font-bold text-center text-gray-900 mb-12">Nossos Planos de Internet</h2>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Plan 1 -->
                <div class="product-card bg-white rounded-xl shadow-lg overflow-hidden border border-gray-100">
                    <div class="h-64 bg-gradient-to-br from-orange-100 to-orange-200 flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-20 h-20 mb-3 text-orange-600" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z"/>
                                <path d="M12 16c.55 0 1-.45 1-1s-.45-1-1-1-1 .45-1 1 .45 1 1 1z" opacity="0.7"/>
                                <path d="M9 14h6v1H9v-1z" opacity="0.5"/>
                            </svg>
                            <div class="text-2xl font-bold text-orange-600">500 MEGA</div>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Plano Essencial</h3>
                        <p class="text-gray-600 mb-3">Ideal para navegação e streaming. Perfeito para casas com até 4 pessoas</p>
                        <div class="text-sm text-gray-600 mb-4">
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Wi-Fi 5 grátis incluso</span>
                            </div>
                            <div class="flex items-center">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Instalação gratuita</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="text-lg text-gray-500 line-through">R$ 100,00/mês</div>
                            <div class="text-sm text-green-600 font-semibold">💳 R$ 90,00/mês no cartão</div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-2xl font-bold text-orange-600">R$ 100,00/mês</span>
                            <button onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSc36a5iuCUbtBVZ0JdBuzA-qw-i7yoWlFT6SgSLnfkB_8ARlQ/viewform', '_blank', 'noopener,noreferrer')" 
                                    class="bg-orange-600 text-white px-4 py-2 rounded-lg hover:bg-orange-700 transition-colors">
                                Contratar
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Plan 2 -->
                <div class="product-card bg-white rounded-xl shadow-lg overflow-hidden border border-gray-100 relative">
                    <div class="absolute top-4 right-4 bg-red-500 text-white px-3 py-1 rounded-full text-sm font-bold">
                        POPULAR
                    </div>
                    <div class="h-64 bg-gradient-to-br from-orange-100 to-orange-200 flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-20 h-20 mb-3 text-orange-600" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M21 3H3c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h5l-1 2v1h8v-1l-1-2h5c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 12H3V5h18v10z"/>
                                <circle cx="12" cy="10" r="2" opacity="0.6"/>
                                <path d="M8 8l8 4-8 4V8z" opacity="0.4"/>
                            </svg>
                            <div class="text-2xl font-bold text-orange-600">700 MEGA</div>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Plano Super</h3>
                        <p class="text-gray-600 mb-3">Para famílias conectadas. Streaming 4K, jogos online e home office sem travamentos</p>
                        <div class="text-sm text-gray-600 mb-4">
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Wi-Fi 6 grátis incluso</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Instalação gratuita</span>
                            </div>
                            <div class="flex items-center">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Globoplay incluso</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="text-lg text-gray-500 line-through">R$ 130,00/mês</div>
                            <div class="text-sm text-green-600 font-semibold">💳 R$ 120,00/mês no cartão</div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-2xl font-bold text-orange-600">R$ 130,00/mês</span>
                            <button onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSc36a5iuCUbtBVZ0JdBuzA-qw-i7yoWlFT6SgSLnfkB_8ARlQ/viewform', '_blank', 'noopener,noreferrer')" 
                                    class="bg-orange-600 text-white px-4 py-2 rounded-lg hover:bg-orange-700 transition-colors">
                                Contratar
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Plan 3 -->
                <div class="product-card bg-white rounded-xl shadow-lg overflow-hidden border border-gray-100">
                    <div class="h-64 bg-gradient-to-br from-orange-100 to-orange-200 flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-20 h-20 mb-3 text-orange-600" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M17.5 12c0 4.14-3.36 7.5-7.5 7.5S2.5 16.14 2.5 12 5.86 4.5 10 4.5s7.5 3.36 7.5 7.5z" opacity="0.2"/>
                                <path d="M21.5 12c0-1.38-1.12-2.5-2.5-2.5s-2.5 1.12-2.5 2.5 1.12 2.5 2.5 2.5 2.5-1.12 2.5-2.5z"/>
                                <path d="M7.5 12c0-1.38-1.12-2.5-2.5-2.5S2.5 10.62 2.5 12s1.12 2.5 2.5 2.5 2.5-1.12 2.5-2.5z"/>
                                <rect x="8" y="6" width="8" height="12" rx="4" opacity="0.3"/>
                                <circle cx="10" cy="9" r="1"/>
                                <circle cx="14" cy="9" r="1"/>
                                <circle cx="10" cy="15" r="1"/>
                                <circle cx="14" cy="15" r="1"/>
                                <path d="M11 11h2v2h-2z" opacity="0.6"/>
                            </svg>
                            <div class="text-2xl font-bold text-orange-600">1 GIGA</div>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Plano Ultra</h3>
                        <p class="text-gray-600 mb-3">Máxima velocidade para empresas e usuários exigentes. Sem limites!</p>
                        <div class="text-sm text-gray-600 mb-4">
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Wi-Fi 6 grátis incluso</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>1 rede mesh inclusa</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Instalação gratuita</span>
                            </div>
                            <div class="flex items-center">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Globoplay incluso</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="text-lg text-gray-500 line-through">R$ 160,00/mês</div>
                            <div class="text-sm text-green-600 font-semibold">💳 R$ 150,00/mês no cartão</div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-2xl font-bold text-orange-600">R$ 160,00/mês</span>
                            <button onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSc36a5iuCUbtBVZ0JdBuzA-qw-i7yoWlFT6SgSLnfkB_8ARlQ/viewform', '_blank', 'noopener,noreferrer')" 
                                    class="bg-orange-600 text-white px-4 py-2 rounded-lg hover:bg-orange-700 transition-colors">
                                Contratar
                            </button>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>

    <!-- Business Plans Section -->
    <section id="business-plans" class="py-16 px-4 bg-gradient-to-br from-blue-50 to-indigo-100">
        <div class="max-w-7xl mx-auto">
            <h2 class="text-4xl font-bold text-center text-gray-900 mb-4">Planos Empresariais</h2>
            <p class="text-center text-gray-600 mb-12 max-w-3xl mx-auto">
                Soluções corporativas com IP fixo, suporte prioritário 24/7 e garantia de uptime de 99,9%
            </p>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Business Plan 1 -->
                <div class="product-card bg-white rounded-xl shadow-lg overflow-hidden border border-blue-200">
                    <div class="h-64 bg-gradient-to-br from-blue-100 to-blue-200 flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-20 h-20 mb-3 text-blue-600" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z"/>
                                <path d="M12 16c.55 0 1-.45 1-1s-.45-1-1-1-1 .45-1 1 .45 1 1 1z" opacity="0.7"/>
                                <path d="M9 14h6v1H9v-1z" opacity="0.5"/>
                            </svg>
                            <div class="text-2xl font-bold text-blue-600">500 MEGA</div>
                            <div class="text-sm text-blue-500 font-semibold">EMPRESARIAL</div>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Plano Essencial</h3>
                        <p class="text-gray-600 mb-3">Ideal para pequenas empresas com até 10 funcionários</p>
                        <div class="text-sm text-gray-600 mb-4">
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Wi-Fi 5 grátis incluso</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Instalação gratuita</span>
                            </div>
                            <div class="flex items-center">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>IP fixo incluso</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="text-lg text-gray-500 line-through">R$ 100,00/mês</div>
                            <div class="text-sm text-green-600 font-semibold">💳 R$ 90,00/mês no cartão</div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-2xl font-bold text-blue-600">R$ 100,00/mês</span>
                            <button onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSc36a5iuCUbtBVZ0JdBuzA-qw-i7yoWlFT6SgSLnfkB_8ARlQ/viewform', '_blank', 'noopener,noreferrer')" 
                                    class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors">
                                Contratar
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Business Plan 2 -->
                <div class="product-card bg-white rounded-xl shadow-lg overflow-hidden border border-blue-200 relative">
                    <div class="absolute top-4 right-4 bg-blue-500 text-white px-3 py-1 rounded-full text-sm font-bold">
                        RECOMENDADO
                    </div>
                    <div class="h-64 bg-gradient-to-br from-blue-100 to-blue-200 flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-20 h-20 mb-3 text-blue-600" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M21 3H3c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h5l-1 2v1h8v-1l-1-2h5c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 12H3V5h18v10z"/>
                                <circle cx="12" cy="10" r="2" opacity="0.6"/>
                                <path d="M8 8l8 4-8 4V8z" opacity="0.4"/>
                            </svg>
                            <div class="text-2xl font-bold text-blue-600">700 MEGA</div>
                            <div class="text-sm text-blue-500 font-semibold">EMPRESARIAL</div>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Plano Super</h3>
                        <p class="text-gray-600 mb-3">Para médias empresas com até 25 funcionários</p>
                        <div class="text-sm text-gray-600 mb-4">
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Wi-Fi 6 grátis incluso</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Instalação gratuita</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Globoplay incluso</span>
                            </div>
                            <div class="flex items-center">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>IP fixo incluso</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="text-lg text-gray-500 line-through">R$ 130,00/mês</div>
                            <div class="text-sm text-green-600 font-semibold">💳 R$ 120,00/mês no cartão</div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-2xl font-bold text-blue-600">R$ 130,00/mês</span>
                            <button onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSc36a5iuCUbtBVZ0JdBuzA-qw-i7yoWlFT6SgSLnfkB_8ARlQ/viewform', '_blank', 'noopener,noreferrer')" 
                                    class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors">
                                Contratar
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Business Plan 3 -->
                <div class="product-card bg-white rounded-xl shadow-lg overflow-hidden border border-blue-200">
                    <div class="h-64 bg-gradient-to-br from-blue-100 to-blue-200 flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-20 h-20 mb-3 text-blue-600" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M17.5 12c0 4.14-3.36 7.5-7.5 7.5S2.5 16.14 2.5 12 5.86 4.5 10 4.5s7.5 3.36 7.5 7.5z" opacity="0.2"/>
                                <path d="M21.5 12c0-1.38-1.12-2.5-2.5-2.5s-2.5 1.12-2.5 2.5 1.12 2.5 2.5 2.5 2.5-1.12 2.5-2.5z"/>
                                <path d="M7.5 12c0-1.38-1.12-2.5-2.5-2.5S2.5 10.62 2.5 12s1.12 2.5 2.5 2.5 2.5-1.12 2.5-2.5z"/>
                                <rect x="8" y="6" width="8" height="12" rx="4" opacity="0.3"/>
                                <circle cx="10" cy="9" r="1"/>
                                <circle cx="14" cy="9" r="1"/>
                                <circle cx="10" cy="15" r="1"/>
                                <circle cx="14" cy="15" r="1"/>
                                <path d="M11 11h2v2h-2z" opacity="0.6"/>
                            </svg>
                            <div class="text-2xl font-bold text-blue-600">1 GIGA</div>
                            <div class="text-sm text-blue-500 font-semibold">EMPRESARIAL</div>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Plano Ultra</h3>
                        <p class="text-gray-600 mb-3">Para grandes empresas com mais de 25 funcionários</p>
                        <div class="text-sm text-gray-600 mb-4">
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Wi-Fi 6 grátis incluso</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>1 rede mesh inclusa</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Instalação gratuita</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Globoplay incluso</span>
                            </div>
                            <div class="flex items-center">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>IP fixo incluso</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="text-lg text-gray-500 line-through">R$ 160,00/mês</div>
                            <div class="text-sm text-green-600 font-semibold">💳 R$ 150,00/mês no cartão</div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-2xl font-bold text-blue-600">R$ 160,00/mês</span>
                            <button onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSc36a5iuCUbtBVZ0JdBuzA-qw-i7yoWlFT6SgSLnfkB_8ARlQ/viewform', '_blank', 'noopener,noreferrer')" 
                                    class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors">
                                Contratar
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Business Plan 4 - Ultra Premium -->
                <div class="product-card bg-white rounded-xl shadow-lg overflow-hidden border border-indigo-200 relative lg:col-span-3 lg:max-w-md lg:mx-auto">
                    <div class="absolute top-4 right-4 bg-indigo-600 text-white px-3 py-1 rounded-full text-sm font-bold">
                        ULTRA CORP
                    </div>
                    <div class="h-64 bg-gradient-to-br from-indigo-100 to-indigo-200 flex items-center justify-center">
                        <div class="text-center">
                            <svg class="w-20 h-20 mb-3 text-indigo-600" fill="currentColor" viewBox="0 0 24 24">
                                <path d="M17.5 12c0 4.14-3.36 7.5-7.5 7.5S2.5 16.14 2.5 12 5.86 4.5 10 4.5s7.5 3.36 7.5 7.5z" opacity="0.2"/>
                                <path d="M21.5 12c0-1.38-1.12-2.5-2.5-2.5s-2.5 1.12-2.5 2.5 1.12 2.5 2.5 2.5 2.5-1.12 2.5-2.5z"/>
                                <path d="M7.5 12c0-1.38-1.12-2.5-2.5-2.5S2.5 10.62 2.5 12s1.12 2.5 2.5 2.5 2.5-1.12 2.5-2.5z"/>
                                <rect x="8" y="6" width="8" height="12" rx="4" opacity="0.3"/>
                                <circle cx="10" cy="9" r="1"/>
                                <circle cx="14" cy="9" r="1"/>
                                <circle cx="10" cy="15" r="1"/>
                                <circle cx="14" cy="15" r="1"/>
                                <path d="M11 11h2v2h-2z" opacity="0.6"/>
                            </svg>
                            <div class="text-2xl font-bold text-indigo-600">1 GIGA ULTRA</div>
                            <div class="text-sm text-indigo-500 font-semibold">EMPRESARIAL</div>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-900 mb-2">Plano Ultra Premium</h3>
                        <p class="text-gray-600 mb-3">Solução corporativa completa para empresas de grande porte</p>
                        <div class="text-sm text-gray-600 mb-4">
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Wi-Fi 6 grátis incluso</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>2 redes mesh (cabeada)</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Instalação gratuita</span>
                            </div>
                            <div class="flex items-center mb-1">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>Globoplay incluso</span>
                            </div>
                            <div class="flex items-center">
                                <span class="text-green-500 mr-2">✓</span>
                                <span>IP fixo incluso</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="text-lg text-gray-500 line-through">R$ 210,00/mês</div>
                            <div class="text-sm text-green-600 font-semibold">💳 R$ 200,00/mês no cartão</div>
                        </div>
                        <div class="flex justify-between items-center">
                            <span class="text-2xl font-bold text-indigo-600">R$ 210,00/mês</span>
                            <button onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSc36a5iuCUbtBVZ0JdBuzA-qw-i7yoWlFT6SgSLnfkB_8ARlQ/viewform', '_blank', 'noopener,noreferrer')" 
                                    class="bg-indigo-600 text-white px-4 py-2 rounded-lg hover:bg-indigo-700 transition-colors">
                                Contratar
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="py-16 px-4 bg-gray-50">
        <div class="max-w-4xl mx-auto text-center">
            <h2 class="text-4xl font-bold text-gray-900 mb-8">Por que escolher a Phoenix Fibra?</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-6 rounded-xl shadow-lg">
                    <div class="text-4xl mb-4">⚡</div>
                    <h3 class="text-xl font-bold mb-2">Velocidade Garantida</h3>
                    <p class="text-gray-600">100% fibra óptica com velocidade real garantida 24 horas por dia</p>
                </div>
                <div class="bg-white p-6 rounded-xl shadow-lg">
                    <div class="text-4xl mb-4">🛠️</div>
                    <h3 class="text-xl font-bold mb-2">Suporte 24/7</h3>
                    <p class="text-gray-600">Atendimento técnico especializado disponível todos os dias</p>
                </div>
                <div class="bg-white p-6 rounded-xl shadow-lg">
                    <div class="text-4xl mb-4">🏠</div>
                    <h3 class="text-xl font-bold mb-2">Instalação Grátis</h3>
                    <p class="text-gray-600">Instalação profissional sem custo adicional em até 48h</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-16 px-4 bg-white">
        <div class="max-w-4xl mx-auto">
            <h2 class="text-4xl font-bold text-center text-gray-900 mb-12">Entre em Contato</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <div>
                    <h3 class="text-2xl font-bold mb-4">Fale Conosco</h3>
                    <div class="space-y-4">
                        <div class="flex items-center">
                            <span class="text-2xl mr-3">📞</span>
                            <span>0800 001 1000</span>
                        </div>
                        <div class="flex items-center">
                            <span class="text-2xl mr-3">📧</span>
                            <span>phoenixfibraltda@gmail.com</span>
                        </div>
                        <div class="flex items-center">
                            <span class="text-2xl mr-3">📍</span>
                            <span>Atendemos em todo o Rio de Janeiro</span>
                        </div>
                        <div class="flex items-center">
                            <span class="text-2xl mr-3">💬</span>
                            <span>WhatsApp: (21) 98411-7989</span>
                        </div>
                    </div>
                </div>
                <form id="contact-form" class="space-y-4">
                    <input type="text" placeholder="Seu nome" required 
                           class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-transparent">
                    <input type="email" placeholder="Seu email" required 
                           class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-transparent">
                    <input type="tel" placeholder="Seu telefone" required 
                           class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-transparent">
                    <textarea placeholder="Sua mensagem ou endereço para instalação" rows="4" required 
                              class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-orange-500 focus:border-transparent"></textarea>
                    <button type="button" onclick="sendToWhatsApp()" 
                            class="w-full bg-green-600 text-white py-3 rounded-lg hover:bg-green-700 transition-colors font-semibold">
                        💬 Enviar pelo WhatsApp
                    </button>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-12 px-4">
        <div class="max-w-7xl mx-auto text-center">
            <div class="text-2xl font-bold mb-4">🔥 Phoenix Fibra</div>
            <p class="text-gray-400 mb-6">Conectando você ao futuro com velocidade e qualidade</p>

            <p class="text-gray-500">&copy; 2024 Phoenix Fibra. Todos os direitos reservados.</p>
        </div>
    </footer>

    <!-- Cart Modal -->
    <div id="cart-modal" class="fixed inset-0 bg-black bg-opacity-50 z-50 hidden">
        <div class="flex items-center justify-center min-h-screen p-4">
            <div class="bg-white rounded-xl max-w-md w-full p-6">
                <div class="flex justify-between items-center mb-4">
                    <h3 class="text-xl font-bold">Planos Selecionados</h3>
                    <button id="close-cart" class="text-gray-500 hover:text-gray-700 text-2xl">&times;</button>
                </div>
                <div id="cart-items" class="space-y-3 mb-4">
                    <p class="text-gray-500 text-center py-8">Nenhum plano selecionado</p>
                </div>
                <div id="cart-total" class="border-t pt-4 hidden">
                    <div class="flex justify-between items-center mb-4">
                        <span class="text-lg font-bold">Total Mensal:</span>
                        <span id="total-amount" class="text-lg font-bold text-orange-600">R$ 0</span>
                    </div>
                    <button id="checkout-btn" class="w-full bg-green-600 text-white py-3 rounded-lg hover:bg-green-700 transition-colors font-semibold">
                        Solicitar Contratação
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Success Message -->
    <div id="success-message" class="fixed top-4 right-4 bg-green-500 text-white px-6 py-3 rounded-lg shadow-lg z-50 hidden">
        <span id="success-text">Plano adicionado!</span>
    </div>

    <!-- Floating WhatsApp Button -->
    <div class="fixed bottom-6 right-6 z-50">
        <a href="https://wa.me/5521984117989" target="_blank" rel="noopener noreferrer" 
           class="bg-green-500 hover:bg-green-600 text-white rounded-full p-4 shadow-lg transition-all duration-300 hover:scale-110 flex items-center justify-center group">
            <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 24 24">
                <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893A11.821 11.821 0 0020.885 3.488"/>
            </svg>
            <span class="ml-2 text-sm font-medium opacity-0 group-hover:opacity-100 transition-opacity duration-300 whitespace-nowrap">
                Fale Conosco
            </span>
        </a>
    </div>

    <script>
        let cart = [];
        let total = 0;

        function addToCart(name, price, creditPrice) {
            const existingItem = cart.find(item => item.name === name);
            
            if (existingItem) {
                showSuccessMessage(`${name} já está selecionado!`);
                return;
            } else {
                cart.push({ name, price, creditPrice, quantity: 1 });
            }
            
            updateCartDisplay();
            showSuccessMessage(`${name} selecionado!`);
        }

        function removeFromCart(name) {
            cart = cart.filter(item => item.name !== name);
            updateCartDisplay();
        }

        let paymentMethod = 'boleto'; // default

        function updateCartDisplay() {
            const cartCount = document.getElementById('cart-count');
            const cartItems = document.getElementById('cart-items');
            const cartTotal = document.getElementById('cart-total');
            const totalAmount = document.getElementById('total-amount');

            const totalItems = cart.length;
            
            // Calculate totals based on payment method
            if (paymentMethod === 'credit') {
                total = cart.reduce((sum, item) => sum + item.creditPrice, 0);
            } else {
                total = cart.reduce((sum, item) => sum + item.price, 0);
            }

            if (totalItems > 0) {
                cartCount.textContent = totalItems;
                cartCount.classList.remove('hidden');
            } else {
                cartCount.classList.add('hidden');
            }

            if (cart.length === 0) {
                cartItems.innerHTML = '<p class="text-gray-500 text-center py-8">Nenhum plano selecionado</p>';
                cartTotal.classList.add('hidden');
            } else {
                const paymentOptions = `
                    <div class="mb-4 p-3 bg-blue-50 rounded-lg">
                        <h4 class="font-semibold mb-2">Forma de Pagamento:</h4>
                        <div class="space-y-2">
                            <label class="flex items-center">
                                <input type="radio" name="payment" value="boleto" ${paymentMethod === 'boleto' ? 'checked' : ''} 
                                       onchange="changePaymentMethod('boleto')" class="mr-2">
                                <span>Boleto/PIX (preço normal)</span>
                            </label>
                            <label class="flex items-center">
                                <input type="radio" name="payment" value="credit" ${paymentMethod === 'credit' ? 'checked' : ''} 
                                       onchange="changePaymentMethod('credit')" class="mr-2">
                                <span class="text-green-600 font-semibold">💳 Cartão de Crédito (R$ 10,00 desconto)</span>
                            </label>
                        </div>
                    </div>
                `;
                
                cartItems.innerHTML = paymentOptions + cart.map(item => {
                    const currentPrice = paymentMethod === 'credit' ? item.creditPrice : item.price;
                    return `
                        <div class="flex justify-between items-center p-3 bg-gray-50 rounded-lg">
                            <div>
                                <div class="font-semibold">${item.name}</div>
                                <div class="text-sm text-gray-600">
                                    R$ ${currentPrice.toFixed(2).replace('.', ',')}/mês
                                    ${paymentMethod === 'credit' ? '<span class="text-green-600 ml-1">(com desconto)</span>' : ''}
                                </div>
                            </div>
                            <button onclick="removeFromCart('${item.name}')" class="text-red-500 hover:text-red-700">
                                🗑️
                            </button>
                        </div>
                    `;
                }).join('');
                cartTotal.classList.remove('hidden');
                totalAmount.textContent = `R$ ${total.toFixed(2).replace('.', ',')}`;
            }
        }

        function changePaymentMethod(method) {
            paymentMethod = method;
            updateCartDisplay();
        }

        function showSuccessMessage(message) {
            const successMessage = document.getElementById('success-message');
            const successText = document.getElementById('success-text');
            
            successText.textContent = message;
            successMessage.classList.remove('hidden');
            
            setTimeout(() => {
                successMessage.classList.add('hidden');
            }, 3000);
        }

        // Event Listeners
        document.getElementById('cart-btn').addEventListener('click', () => {
            document.getElementById('cart-modal').classList.remove('hidden');
        });

        document.getElementById('close-cart').addEventListener('click', () => {
            document.getElementById('cart-modal').classList.add('hidden');
        });

        document.getElementById('cart-modal').addEventListener('click', (e) => {
            if (e.target.id === 'cart-modal') {
                document.getElementById('cart-modal').classList.add('hidden');
            }
        });

        document.getElementById('checkout-btn').addEventListener('click', () => {
            if (cart.length === 0) return;
            
            const planos = cart.map(item => item.name).join(', ');
            showSuccessMessage(`Solicitação enviada! Entraremos em contato para agendar a instalação dos planos: ${planos}`);
            cart = [];
            total = 0;
            updateCartDisplay();
            document.getElementById('cart-modal').classList.add('hidden');
        });

        function sendToWhatsApp() {
            const form = document.getElementById('contact-form');
            const nome = form.querySelector('input[placeholder="Seu nome"]').value;
            const email = form.querySelector('input[placeholder="Seu email"]').value;
            const telefone = form.querySelector('input[placeholder="Seu telefone"]').value;
            const mensagem = form.querySelector('textarea').value;
            
            if (!nome || !email || !telefone || !mensagem) {
                showSuccessMessage('Por favor, preencha todos os campos!');
                return;
            }
            
            const texto = `Olá! Gostaria de contratar internet fibra da Phoenix Fibra.

*Nome:* ${nome}
*Email:* ${email}
*Telefone:* ${telefone}
*Mensagem:* ${mensagem}`;
            
            const whatsappUrl = `https://wa.me/5521984117989?text=${encodeURIComponent(texto)}`;
            window.open(whatsappUrl, '_blank', 'noopener,noreferrer');
            
            showSuccessMessage('Redirecionando para o WhatsApp...');
            form.reset();
        }
    </script>
<script>(function(){function c(){var b=a.contentDocument||a.contentWindow.document;if(b){var d=b.createElement('script');d.innerHTML="window.__CF$cv$params={r:'98eaed609597f41e',t:'MTc2MDQ4NTI4NC4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js';document.getElementsByTagName('head')[0].appendChild(a);";b.getElementsByTagName('head')[0].appendChild(d)}}if(document.body){var a=document.createElement('iframe');a.height=1;a.width=1;a.style.position='absolute';a.style.top=0;a.style.left=0;a.style.border='none';a.style.visibility='hidden';document.body.appendChild(a);if('loading'!==document.readyState)c();else if(window.addEventListener)document.addEventListener('DOMContentLoaded',c);else{var e=document.onreadystatechange||function(){};document.onreadystatechange=function(b){e(b);'loading'!==document.readyState&&(document.onreadystatechange=e,c())}}}})();</script></body>
</html>
