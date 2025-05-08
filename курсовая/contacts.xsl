<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Coffee Mood - О создателе</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #d07684;
            color: #fff;
            line-height: 1.6;
            padding: 20px;
            overflow-x: hidden;
            margin: 0;
            min-height: 100vh;
            position: relative;
        }

        .site-title {
            display: flex;
            width: 780px;
            justify-content: flex-start;
            align-items: center;
            font-size: 40px;
            padding-left: 20px;
            font-weight: 900;
            filter: drop-shadow(2px 2px 3px rgba(0, 0, 0, 1));
            color: white;
            font-family: Arial, Helvetica, sans-serif;
            text-decoration: none;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .site-title:hover {
            transform: translateY(-3px);
            transition: transform 0.2s ease;
        }

        .bg-image {
            position: absolute;
            width: 600px; 
            height: 600px;
            background-size: contain;
            background-repeat: no-repeat;
            z-index: -1;
        }

        .bg-image.Ellipse2 {
            bottom: -30%;
            right: 0;
            background-position: bottom right;
            background-image: url(photo/Ellipse2.png);
        }

        .bg-image.Ellipse {
            top: -30%;
            left: -10%;
            background-position: top left;
            background-image: url(photo/Ellipse1.png);
        }

        .container {
            max-width: 800px;
            margin: 80px auto 0;
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            box-sizing: border-box;
        }

        h1 {
            color: #fff;
            border-bottom: 2px solid rgba(255, 255, 255, 0.3);
            padding-bottom: 10px;
            text-align: center;
            font-size: 2.5em;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .owner-info {
            margin-bottom: 30px;
        }

        h2 {
            color: #fff;
            text-align: center;
            font-size: 2em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .contact {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            margin: 15px 0;
            border-radius: 10px;
            border-left: 4px solid rgba(255, 255, 255, 0.5);
            transition: transform 0.3s ease;
        }

        .contact:hover {
            transform: translateX(10px);
            background: rgba(255, 255, 255, 0.15);
        }

        a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #ffe0e6;
            text-decoration: none;
        }

        .description {
            background: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            margin-top: 30px;
            text-align: center;
            font-style: italic;
        }

        @media screen and (max-width: 1200px) {
            .container {
                max-width: 90%;
            }
            .site-title {
                width: 400px;
                font-size: 32px;
            }
        }

        @media screen and (max-width: 768px) {
            .container {
                margin-top: 60px;
                padding: 20px;
            }

            h1 {
                font-size: 2em;
            }

            h2 {
                font-size: 1.5em;
            }

            .contact {
                padding: 15px;
            }

            .site-title {
                width: 250px;
                font-size: 24px;
            }
        }

        @media screen and (max-width: 480px) {
            .container {
                margin-top: 40px;
                padding: 15px;
            }

            h1 {
                font-size: 1.8em;
            }

            h2 {
                font-size: 1.3em;
            }

            .contact {
                padding: 12px;
                font-size: 0.9em;
            }

            .site-title {
                width: 150px;
                font-size: 18px;
            }
        }

        /* Поддержка тёмной темы */
        @media (prefers-color-scheme: dark) {
            body {
                background-color: #8b5a5a;
            }
        }

        /* Поддержка уменьшенного движения */
        @media (prefers-reduced-motion: reduce) {
            .contact {
                transition: none;
            }
        }
    </style>
</head>
<body>
    <a href="website.html" class="site-title">Coffee &amp; Mood</a>
    <div class="bg-image Ellipse"></div>
    <div class="bg-image Ellipse2"></div>
    <div class="container">
        <h1>О создателе кофейни</h1>
        <xsl:apply-templates select="coffee_shop/owner"/>
        <div class="description">
            <xsl:value-of select="coffee_shop/description"/>
        </div>
    </div>
</body>
</html>
</xsl:template>

<xsl:template match="owner">
    <div class="owner-info">
        <h2><xsl:value-of select="name"/></h2>
        <div class="contacts">
            <div class="contact">
                Telegram: <a href="{contacts/telegram}"><xsl:value-of select="contacts/telegram"/></a>
            </div>
            <div class="contact">
                Instagram: <a href="https://instagram.com/{contacts/instagram}">@<xsl:value-of select="contacts/instagram"/></a>
            </div>
            <div class="contact">
                Телефон: <xsl:value-of select="contacts/phone"/>
            </div>
        </div>
    </div>
</xsl:template>
</xsl:stylesheet>