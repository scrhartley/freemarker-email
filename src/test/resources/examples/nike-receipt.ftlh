<#--<#include "components.ftlh">-->

<#assign baseUrl = ''>
<@defineStyles />

<@Html>
    <@Head />
    <@Preview>Get your order summary, estimated delivery date and more</@Preview>
    <@Body style=main>
      <@Container style=container>
        <@Section style=track.container>
          <@Row>
            <@Column>
              <@Text style=global.paragraphWithBold>Tracking Number</@Text>
              <@Text style=track.number>1ZV218970300071628</@Text>
            </@Column>
            <@Column align="right">
              <@Link style=global.button>Track Package</@Link>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=global.hr />
        <@Section style=message>
          <@Img
            src= baseUrl + "images/nike-logo.png"
            width="66"
            height="22"
            alt="Nike"
            style={ "margin": 'auto' }
          />
          <@Heading style=global.heading>It's On Its Way.</@Heading>
          <@Text style=global.text>
            You order's is on its way. Use the link above to track its progress.
          </@Text>
          <@Text style= global.text + { "margin-top": 24 }>
            We´ve also charged your payment method for the cost of your order
            and will be removing any authorization holds. For payment details,
            please visit your Orders page on Nike.com or in the Nike app.
          </@Text>
        </@Section>
        <@Hr style=global.hr />
        <@Section style=global.defaultPadding>
          <@Text style=adressTitle>Shipping to: Zeno Rocha</@Text>
          <@Text style= global.text + { "font-size": 14 }>
            2125 Chestnut St, San Francisco, CA 94123
          </@Text>
        </@Section>
        <@Hr style=global.hr />
        <@Section
          style= paddingX + { "padding-top": '40px', "padding-bottom": '40px' }
        >
          <@Row>
            <@Column>
              <@Img
                src= baseUrl + "images/nike-product.png"
                alt="Brazil 2022/23 Stadium Away Women's Nike Dri-FIT Soccer Jersey"
                style={ "float": 'left' }
                width="260px"
              />
            </@Column>
            <@Column style={ "vertical-align": 'top', "padding-left": '12px' }>
              <@Text style= paragraph + { "font-weight": '500' }>
                Brazil 2022/23 Stadium Away Women's Nike Dri-FIT Soccer Jersey
              </@Text>
              <@Text style=global.text>Size L (12–14)</@Text>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=global.hr />
        <@Section style=global.defaultPadding>
          <@Row style={ "display": 'inline-flex', "margin-bottom": '40px' }>
            <@Column style={ "width": '170px' }>
              <@Text style=global.paragraphWithBold>Order Number</@Text>
              <@Text style=track.number>C0106373851</@Text>
            </@Column>
            <@Column>
              <@Text style=global.paragraphWithBold>Order Date</@Text>
              <@Text style=track.number>Sep 22, 2022</@Text>
            </@Column>
          </@Row>
          <@Row>
            <@Column align="center">
              <@Link style=global.button>Order Status</@Link>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=global.hr />
        <@Section style=paddingY>
          <@Row>
            <@Text style=global.heading>Top Picks For You</@Text>
          </@Row>
          <@Row style=recommendations.container>
            <@Column
              style= recommendations.product + { "padding-left": '4px' }
              align="center"
            >
              <@Img
                src= baseUrl + "images/nike-recommendation-1.png"
                alt="Brazil 2022/23 Stadium Away Women's Nike Dri-FIT Soccer Jersey"
                width="100%"
              />
              <@Text style=recommendations.title>
                USWNT 2022/23 Stadium Home
              </@Text>
              <@Text style=recommendations.text>
                Women's Nike Dri-FIT Soccer Jersey
              </@Text>
            </@Column>
            <@Column style=recommendations.product align="center">
              <@Img
                src= baseUrl + "images/nike-recommendation-2.png"
                alt="Brazil 2022/23 Stadium Away Women's Nike Dri-FIT Soccer Jersey"
                width="100%"
              />
              <@Text style=recommendations.title>
                Brazil 2022/23 Stadium Goalkeeper
              </@Text>
              <@Text style=recommendations.text>
                Men's Nike Dri-FIT Short-Sleeve Football Shirt
              </@Text>
            </@Column>
            <@Column style=recommendations.product align="center">
              <@Img
                src= baseUrl + "images/nike-recommendation-4.png"
                alt="Brazil 2022/23 Stadium Away Women's Nike Dri-FIT Soccer Jersey"
                width="100%"
              />
              <@Text style=recommendations.title>FFF</@Text>
              <@Text style=recommendations.text>Women's Soccer Jacket</@Text>
            </@Column>
            <@Column
              style= recommendations.product + { "padding-right": '4px' }
              align="center"
            >
              <@Img
                src= baseUrl + "images/nike-recommendation-4.png"
                alt="Brazil 2022/23 Stadium Away Women's Nike Dri-FIT Soccer Jersey"
                width="100%"
              />
              <@Text style=recommendations.title>FFF</@Text>
              <@Text style=recommendations.text>
                Women's Nike Pre-Match Football Top
              </@Text>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=global.hr />
        <@Section style=menu.container>
          <@Row>
            <@Text style=menu.title>Get Help</@Text>
          </@Row>
          <@Row style=menu.content>
            <@Column style={ "width": '33%' } colSpan=1>
              <@Link href="/" style=menu.text>
                Shipping Status
              </@Link>
            </@Column>
            <@Column style={ "width": '33%' } colSpan=1>
              <@Link href="/" style=menu.text>
                Shipping & Delivery
              </@Link>
            </@Column>
            <@Column style={ "width": '33%' } colSpan=1>
              <@Link href="/" style=menu.text>
                Returns & Exchanges
              </@Link>
            </@Column>
          </@Row>
          <@Row style= menu.content + { "padding-top": '0' }>
            <@Column style={ "width": '33%' } colSpan=1>
              <@Link href="/" style=menu.text>
                How to Return
              </@Link>
            </@Column>
            <@Column style={ "width": '66%' } colSpan=2>
              <@Link href="/" style=menu.text>
                Contact Options
              </@Link>
            </@Column>
          </@Row>
          <@Hr style=global.hr />
          <@Row style=menu.tel>
            <@Column>
              <@Section>
                <@Column style={ "width": '16px' }>
                  <@Img
                    src= baseUrl + "images/nike-phone.png"
                    width="16px"
                    height="26px"
                    style={ "padding-right": '14px' }
                  />
                </@Column>
                <@Column>
                  <@Text style= menu.text + { "margin-bottom": '0' }>
                    1-800-806-6453
                  </@Text>
                </@Column>
              </@Section>
            </@Column>
            <@Column>
              <@Text
                style= menu.text + {
                  "margin-bottom": '0'
                }
              >
                4 am - 11 pm PT
              </@Text>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=global.hr />
        <@Section style=paddingY>
          <@Row>
            <@Text style=global.heading>Nike.com</@Text>
          </@Row>
          <@Row style=categories.container>
            <@Column align="center">
              <@Link href="/" style=categories.text>
                Men
              </@Link>
            </@Column>
            <@Column align="center">
              <@Link href="/" style=categories.text>
                Women
              </@Link>
            </@Column>
            <@Column align="center">
              <@Link href="/" style=categories.text>
                Kids
              </@Link>
            </@Column>
            <@Column align="center">
              <@Link href="/" style=categories.text>
                Customize
              </@Link>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style= global.hr + { "margin-top": '12px' } />
        <@Section style=paddingY>
          <@Row style=footer.policy>
            <@Column>
              <@Text style=footer.text>Web Version</@Text>
            </@Column>
            <@Column>
              <@Text style=footer.text>Privacy Policy</@Text>
            </@Column>
          </@Row>
          <@Row>
            <@Text style= footer.text + { "padding-top": '30px', "padding-bottom": '30px' }>
              Please contact us if you have any questions. (If you reply to this
              email, we won't be able to see it.)
            </@Text>
          </@Row>
          <@Row>
            <@Text style=footer.text>
              © 2022 Nike, Inc. All Rights Reserved.
            </@Text>
          </@Row>
          <@Row>
            <@Text style=footer.text>
              NIKE, INC. One Bowerman Drive, Beaverton, Oregon 97005, USA.
            </@Text>
          </@Row>
        </@Section>
      </@Container>
    </@Body>
</@Html>


<#macro defineStyles>
    <#assign paddingX = {
      "padding-left": '40px',
      "padding-right": '40px'
    }>

    <#assign paddingY = {
      "padding-top": '22px',
      "padding-bottom": '22px'
    }>

    <#assign paragraph = {
      "margin": '0',
      "line-height": '2'
    }>

    <#assign global = {
      "paddingX": paddingX,
      "paddingY": paddingY,
      "defaultPadding": paddingX + paddingY,
      "paragraphWithBold": paragraph + { "font-weight": 'bold' },
      "heading": {
        "font-size": '32px',
        "line-height": '1.3',
        "font-weight": '700',
        "text-align": 'center',
        "letter-spacing": '-1px'
      },
      "text": paragraph + {
        "color": '#747474',
        "font-weight": '500'
      },
      "button": {
        "border": '1px solid #929292',
        "font-size": '16px',
        "text-decoration": 'none',
        "padding": '10px 0px',
        "width": '220px',
        "display": 'block',
        "text-align": 'center',
        "font-weight": 500,
        "color": '#000'
      },
      "hr": {
        "border-color": '#E5E5E5',
        "margin": '0'
      }
    }>

    <#assign main = {
      "background-color": '#ffffff',
      "font-family":
        '-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif'
    }>

    <#assign container = {
      "margin": '10px auto',
      "width": '600px',
      "border": '1px solid #E5E5E5'
    }>

    <#assign track = {
      "container": {
        "padding": '22px 40px',
        "background-color": '#F7F7F7'
      },
      "number": {
        "margin": '12px 0 0 0',
        "font-weight": 500,
        "line-height": '1.4',
        "color": '#6F6F6F'
      }
    }>

    <#assign message = {
      "padding": '40px 74px',
      "text-align": 'center'
    }>

    <#assign adressTitle = paragraph + {
      "font-size": '15px',
      "font-weight": 'bold'
    }>

    <#assign recommendationsText = {
      "margin": '0',
      "font-size": '15px',
      "line-height": '1',
      "padding-left": '10px',
      "padding-right": '10px'
    }>

    <#assign recommendations = {
      "container": {
        "padding": '20px 0'
      },
      "product": {
        "vertical-align": 'top',
        "text-align": 'left',
        "padding-left": '2px',
        "padding-right": '2px'
      },
      "title": recommendationsText + { "padding-top": '12px', "font-weight": '500' },
      "text": recommendationsText + {
        "padding-top": '4px',
        "color": '#747474'
      }
    }>

    <#assign menu = {
      "container": {
        "padding-left": '20px',
        "padding-right": '20px',
        "padding-top": '20px',
        "background-color": '#F7F7F7'
      },
      "content": paddingY + {
        "padding-left": '20px',
        "padding-right": '20px'
      },
      "title": {
        "padding-left": '20px',
        "padding-right": '20px',
        "font-weight": 'bold'
      },
      "text": {
        "font-size": '13.5px',
        "margin-top": 0,
        "font-weight": 500,
        "color": '#000'
      },
      "tel": {
        "padding-left": '20px',
        "padding-right": '20px',
        "padding-top": '32px',
        "padding-bottom": '22px'
      }
    }>

    <#assign categories = {
      "container": {
        "width": '370px',
        "margin": 'auto',
        "padding-top": '12px'
      },
      "text": {
        "font-weight": '500',
        "color": '#000'
      }
    }>

    <#assign footer = {
      "policy": {
        "width": '166px',
        "margin": 'auto'
      },
      "text": {
        "margin": '0',
        "color": '#AFAFAF',
        "font-size": '13px',
        "text-align": 'center'
      }
    }>
</#macro>