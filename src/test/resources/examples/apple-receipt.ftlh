<#--<#include "components.ftlh">-->

<#assign baseUrl = ''>
<@defineStyles />

<@Html>
    <@Head />
    <@Preview>Apple Receipt</@Preview>

    <@Body style=main>
      <@Container style=container>
        <@Section>
          <@Row>
            <@Column>
              <@Img
                src= baseUrl + "images/apple-logo.png"
                width="42"
                height="42"
                alt="Apple Logo"
              />
            </@Column>
          </@Row>

          <@Column align="right" style=tableCell>
            <@Text style=heading>Receipt</@Text>
          </@Column>
        </@Section>
        <@Section>
          <@Text style=couponText>
            Save 3% on all your Apple purchases with Apple Card.
            <sup style=supStyle>1</sup>${' '}
            <@Link href="https://www.apple.com/apple-card">
              Apply and use in minutes
            </@Link>
            <sup style=supStyle>2</sup>
          </@Text>
        </@Section>
        <@Section style=informationTable>
          <@Section style=informationTableRow>
            <@Column colSpan="2">
              <@Section>
                <@Row>
                  <@Column style=informationTableColumn>
                    <@Text style=informationTableLabel>APPLE ID</@Text>
                    <@Link
                      style=informationTableValue + {
                        "color": '#15c',
                        "text-decoration": 'underline'
                      }
                    >
                      zeno.rocha@gmail.com
                    </@Link>
                  </@Column>
                </@Row>

                <@Row>
                  <@Column style=informationTableColumn>
                    <@Text style=informationTableLabel>INVOICE DATE</@Text>
                    <@Text style=informationTableValue>18 Jan 2023</@Text>
                  </@Column>
                </@Row>

                <@Row>
                  <@Column style=informationTableColumn>
                    <@Text style=informationTableLabel>ORDER ID</@Text>
                    <@Link
                      style=informationTableValue + {
                        "color": '#15c',
                        "text-decoration": 'underline'
                      }
                    >
                      ML4F5L8522
                    </@Link>
                  </@Column>
                  <@Column style=informationTableColumn>
                    <@Text style=informationTableLabel>DOCUMENT NO.</@Text>
                    <@Text style=informationTableValue>186623754793</@Text>
                  </@Column>
                </@Row>
              </@Section>
            </@Column>
            <@Column style=informationTableColumn colSpan="2">
              <@Text style=informationTableLabel>BILLED TO</@Text>
              <@Text style=informationTableValue>
                Visa .... 7461 (Apple Pay)
              </@Text>
              <@Text style=informationTableValue>Zeno Rocha</@Text>
              <@Text style=informationTableValue>2125 Chestnut St</@Text>
              <@Text style=informationTableValue>San Francisco, CA 94123</@Text>
              <@Text style=informationTableValue>USA</@Text>
            </@Column>
          </@Section>
        </@Section>
        <@Section style=productTitleTable>
          <@Text style=productsTitle>App Store</@Text>
        </@Section>
        <@Section>
          <@Row>
            <@Column style={ "width": '64px' }>
              <@Img
                src= baseUrl + "images/apple-hbo-max-icon.jpeg"
                width="64"
                height="64"
                alt="HBO Max"
                style=productIcon
              />
            </@Column>
            <@Column style={ "padding-left": '22px' }>
              <@Text style=productTitle>HBO Max: Stream TV &amp; Movies</@Text>
              <@Text style=productDescription>HBO Max Ad-Free (Monthly)</@Text>
              <@Text style=productDescription>Renews Aug 20, 2023</@Text>
              <@Link
                href="https://userpub.itunes.apple.com/WebObjects/MZUserPublishing.woa/wa/addUserReview?cc=us&amp;id=1497977514&amp;o=i&amp;type=Subscription%20Renewal"
                style=productLink
                data\-saferedirecturl="https://www.google.com/url?q=https://userpub.itunes.apple.com/WebObjects/MZUserPublishing.woa/wa/addUserReview?cc%3Dus%26id%3D1497977514%26o%3Di%26type%3DSubscription%2520Renewal&amp;source=gmail&amp;ust=1673963081204000&amp;usg=AOvVaw2DFCLKMo1snS-Swk5H26Z1"
              >
                Write a Review
              </@Link>
              <span style=divisor>|</span>
              <@Link
                href="https://buy.itunes.apple.com/WebObjects/MZFinance.woa/wa/reportAProblem?a=1497977514&amp;cc=us&amp;d=683263808&amp;o=i&amp;p=29065684906671&amp;pli=29092219632071&amp;s=1"
                style=productLink
                data\-saferedirecturl="https://www.google.com/url?q=https://buy.itunes.apple.com/WebObjects/MZFinance.woa/wa/reportAProblem?a%3D1497977514%26cc%3Dus%26d%3D683263808%26o%3Di%26p%3D29065684906671%26pli%3D29092219632071%26s%3D1&amp;source=gmail&amp;ust=1673963081204000&amp;usg=AOvVaw3y47L06B2LTrL6qsmaW2Hq"
              >
                Report a Problem
              </@Link>
            </@Column>

            <@Column style=productPriceWrapper align="right">
              <@Text style=productPrice>$14.99</@Text>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=productPriceLine />
        <@Section align="right">
          <@Row>
            <@Column style=tableCell align="right">
              <@Text style=productPriceTotal>TOTAL</@Text>
            </@Column>
            <@Column style=productPriceVerticalLine></@Column>
            <@Column style=productPriceLargeWrapper>
              <@Text style=productPriceLarge>$14.99</@Text>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=productPriceLineBottom />
        <@Section>
          <@Row>
            <@Column align="center" style=block>
              <@Img
                src= baseUrl + "images/apple-card-icon.png"
                width="60"
                height="17"
                alt="Apple Card"
              />
            </@Column>
          </@Row>
        </@Section>
        <@Section>
          <@Row>
            <@Column align="center" style=ctaTitle>
              <@Text style=ctaText>Save 3% on all your Apple purchases.</@Text>
            </@Column>
          </@Row>
        </@Section>
        <@Section>
          <@Row>
            <@Column align="center" style=walletWrapper>
              <@Link
                href="https://wallet.apple.com/apple-card/setup/feature/ccs?referrer=cid%3Dapy-120-100003"
                style=walletLink
              >
                <@Img
                  src= baseUrl + "images/apple-wallet.png"
                  width="28"
                  height="28"
                  alt="Apple Wallet"
                  style=walletImage
                />
                <span style=walletLinkText>Apply and use in minutes</span>
              </@Link>
            </@Column>
          </@Row>
        </@Section>
        <@Hr style=walletBottomLine />
        <@Text style=footerText>
          1. 3% savings is earned as Daily Cash and is transferred to your Apple
          Cash card when transactions post to your Apple Card account. If you do
          not have an Apple Cash card, Daily Cash can be applied by you as a
          credit on your statement balance. 3% is the total amount of Daily Cash
          earned for these purchases. See the Apple Card Customer Agreement for
          more details on Daily Cash and qualifying transactions.
        </@Text>
        <@Text style=footerText>2. Subject to credit approval.</@Text>
        <@Text style=footerText>
          To access and use all the features of Apple Card, you must add Apple
          Card to Wallet on an iPhone or iPad with iOS or iPadOS 13.2 or later.
          Update to the latest version of iOS or iPadOS by going to Settings
          &gt; General &gt; Software Update. Tap Download and Install.
        </@Text>
        <@Text style=footerText>
          Available for qualifying applicants in the United States.
        </@Text>
        <@Text style=footerText>
          Apple Card is issued by Goldman Sachs Bank USA, Salt Lake City Branch.
        </@Text>
        <@Text style=footerText>
          If you reside in the US territories, please call Goldman Sachs at
          877-255-5923 with questions about Apple Card.
        </@Text>
        <@Text style=footerTextCenter>
          Privacy: We use a
          <@Link href="http://support.apple.com/kb/HT207233" style=footerLink>
            ${' '}
            Subscriber ID${' '}
          </@Link>
          to provide reports to developers.
        </@Text>
        <@Text style=footerTextCenter>
          Get help with subscriptions and purchases.
          <@Link
            href="https://support.apple.com/billing?cid=email_receipt"
            style=footerLink
          >
            Visit Apple Support.
          </@Link>
        </@Text>
        <@Text style=footerTextCenter>
          Learn how to${' '}
          <@Link href="https://support.apple.com/kb/HT204030?cid=email_receipt_itunes_article_HT204030">
            manage your password preferences
          </@Link>${' '}
          for iTunes, Apple Books, and App Store purchases.
        </@Text>

        <@Text style=footerTextCenter>
          ${' '}
          You have the option to stop receiving email receipts for your
          subscription renewals. If you have opted out, you can still view your
          receipts in your account under Purchase History. To manage receipts or
          to opt in again, go to${' '}
          <@Link href="https://finance-app.itunes.apple.com/account/subscriptions?unsupportedRedirectUrl=https://apps.apple.com/US/invoice">
            Account Settings.
          </@Link>
        </@Text>
        <@Section>
          <@Row>
            <@Column align="center" style=footerIcon>
              <@Img
                src= baseUrl + "images/apple-logo.png"
                width="26"
                height="26"
                alt="Apple Card"
              />
            </@Column>
          </@Row>
        </@Section>
        <@Text style=footerLinksWrapper>
          <@Link href="https://buy.itunes.apple.com/WebObjects/MZFinance.woa/wa/accountSummary?mt=8">
            Account Settings
          </@Link>${' '}
          •${' '}
          <@Link href="https://www.apple.com/legal/itunes/us/sales.html">
            Terms of Sale
          </@Link>${' '}
          •${' '}
          <@Link href="https://www.apple.com/legal/privacy/">
            Privacy Policy${' '}
          </@Link>
        </@Text>
        <@Text style=footerCopyright>
          Copyright © 2023 Apple Inc. <br />${' '}
          <@Link href="https://www.apple.com/legal/">All rights reserved</@Link>
        </@Text>
      </@Container>
    </@Body>
</@Html>


<#macro defineStyles>
    <#assign main = {
      "font-family": '"Helvetica Neue",Helvetica,Arial,sans-serif',
      "background-color": '#ffffff'
    }>

    <#assign resetText = {
      "margin": '0',
      "padding": '0',
      "line-height": 1.4
    }>

    <#assign container = {
      "margin": '0 auto',
      "padding": '20px 0 48px',
      "width": '660px'
    }>

    <#assign tableCell = { "display": 'table-cell' }>

    <#assign heading = {
      "font-size": '32px',
      "font-weight": '300',
      "color": '#888888'
    }>

    <#assign couponText = {
      "text-align": 'center',
      "margin": '36px 0 40px 0',
      "font-size": '14px',
      "font-weight": '500',
      "color": '#111111'
    }>

    <#assign supStyle = {
      "font-weight": '300'
    }>

    <#assign informationTable = {
      "border-collapse": 'collapse',
      "border-spacing": '0px',
      "color": 'rgb(51,51,51)',
      "background-color": 'rgb(250,250,250)',
      "border-radius": '3px',
      "font-size": '12px'
    }>

    <#assign informationTableRow = {
      "height": '46px'
    }>

    <#assign informationTableColumn = {
      "padding-left": '20px',
      "border-style": 'solid',
      "border-color": 'white',
      "border-width": '0px 1px 1px 0px',
      "height": '44px'
    }>

    <#assign informationTableLabel = resetText + {
      "color": 'rgb(102,102,102)',
      "font-size": '10px'
    }>

    <#assign informationTableValue = {
      "font-size": '12px',
      "margin": '0',
      "padding": '0',
      "line-height": 1.4
    }>

    <#assign productTitleTable = informationTable + {
      "margin": '30px 0 15px 0',
      "height": '24px'
    }>

    <#assign productsTitle = {
      "background": '#fafafa',
      "padding-left": '10px',
      "font-size": '14px',
      "font-weight": '500',
      "margin": '0'
    }>

    <#assign productIcon = {
      "margin": '0 0 0 20px',
      "border-radius": '14px',
      "border": '1px solid rgba(128,128,128,0.2)'
    }>

    <#assign productTitle = { "font-size": '12px', "font-weight": '600' } + resetText>

    <#assign productDescription = {
      "font-size": '12px',
      "color": 'rgb(102,102,102)'
    } + resetText>

    <#assign productLink = {
      "font-size": '12px',
      "color": 'rgb(0,112,201)',
      "text-decoration": 'none'
    }>

    <#assign divisor = {
      "margin-left": '4px',
      "margin-right": '4px',
      "color": 'rgb(51,51,51)',
      "font-weight": 200
    }>

    <#assign productPriceTotal = {
      "margin": '0',
      "color": 'rgb(102,102,102)',
      "font-size": '10px',
      "font-weight": '600',
      "padding": '0px 30px 0px 0px',
      "text-align": 'right'
    }>

    <#assign productPrice = {
      "font-size": '12px',
      "font-weight": '600',
      "margin": '0'
    }>

    <#assign productPriceLarge = {
      "margin": '0px 20px 0px 0px',
      "font-size": '16px',
      "font-weight": '600',
      "white-space": 'nowrap',
      "text-align": 'right'
    }>

    <#assign productPriceWrapper = {
      "display": 'table-cell',
      "padding": '0px 20px 0px 0px',
      "width": '100px',
      "vertical-align": 'top'
    }>

    <#assign productPriceLine = { "margin": '30px 0 0 0' }>

    <#assign productPriceVerticalLine = {
      "height": '48px',
      "border-left": '1px solid',
      "border-color": 'rgb(238,238,238)'
    }>

    <#assign productPriceLargeWrapper = { "display": 'table-cell', "width": '90px' }>

    <#assign productPriceLineBottom = { "margin": '0 0 75px 0' }>

    <#assign block = { "display": 'block' }>

    <#assign ctaTitle = {
      "display": 'block',
      "margin": '15px 0 0 0'
    }>

    <#assign ctaText = { "font-size": '24px', "font-weight": '500' }>

    <#assign walletWrapper = { "display": 'table-cell', "margin": '10px 0 0 0' }>

    <#assign walletLink = { "color": 'rgb(0,126,255)', "text-decoration": 'none' }>

    <#assign walletImage = {
      "display": 'inherit',
      "padding-right": '8px',
      "vertical-align": 'middle'
    }>

    <#assign walletBottomLine = { "margin": '65px 0 20px 0' }>

    <#assign footerText = {
      "font-size": '12px',
      "color": 'rgb(102,102,102)',
      "margin": '0',
      "line-height": 'auto',
      "margin-bottom": '16px'
    }>

    <#assign footerTextCenter = {
      "font-size": '12px',
      "color": 'rgb(102,102,102)',
      "margin": '20px 0',
      "line-height": 'auto',
      "text-align": 'center'
    }>

    <#assign footerLink = { "color": 'rgb(0,115,255)' }>

    <#assign footerIcon = { "display": 'block', "margin": '40px 0 0 0' }>

    <#assign footerLinksWrapper = {
      "margin": '8px 0 0 0',
      "text-align": 'center',
      "font-size": '12px',
      "color": 'rgb(102,102,102)'
    }>

    <#assign footerCopyright = {
      "margin": '25px 0 0 0',
      "text-align": 'center',
      "font-size": '12px',
      "color": 'rgb(102,102,102)'
    }>

    <#assign walletLinkText = {
      "font-size": '14px',
      "font-weight": '400',
      "text-decoration": 'none'
    }>
</#macro>
