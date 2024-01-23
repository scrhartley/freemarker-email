<#--<#include "components.ftlh">-->

<#assign baseUrl = ''>
<#assign defaultTips = {
    'tips': [
        {
            "id": 1,
            "description": 'To find a specific phrase, enter it in quotes: "local storage"'
        },
        {
            "id": 1,
            "description": 'To search within specific tag(s), enter them in square brackets: [javascript]'
        },
        {
            "id": 1,
            "description": 'Combine them to get even more precise results - [javascript] "local storage" searches for the phrase “local storage” in questions that have the [javascript] tag'
        }
    ]
}>
<#assign tips = tips?has_content?then(tips, defaultTips.tips)>
<@defineStyles />

<@Html>
    <@Head />
    <@Preview>Stack overflow tips for searching</@Preview>
    <@Body style=main>
        <@Container style=container>
            <@Section style=logo>
              <@Img width=146 src=baseUrl + "images/stack-overflow-logo.png" />
            </@Section>

            <@Section style=header>
                <@Row>
                    <@Column style=headerContent>
                        <@Heading style=headerContentTitle>
                            Find what you want, faster
                        </@Heading>
                        <@Text style=headerContentSubtitle>
                            Tips and tricks for searching on Stack Overflow
                        </@Text>
                    </@Column>
                    <@Column style=headerImageContainer>
                        <@Img
                            style=headerImage
                            width=340
                            src=baseUrl + "images/stack-overflow-header.png"
                        />
                    </@Column>
                </@Row>
            </@Section>

            <@Section style=content>
                <@Heading tag="h2" style=title>
                    Searching for solutions
                </@Heading>
                <@Text style=paragraph>
                    With more than 18 million questions, it's possible that someone has
                    already provided a solution to the problem you're facing.${' '}
                </@Text>

                <@Hr style=divider />

                <@Heading tag="h2" style=title>
                    Use the search bar at the top of the page to find what you need
                </@Heading>
                <@Text style=paragraph>
                    Here are a few simple search tips to get you started:
                </@Text>
                <ul>
                    <#list tips as tip>
                      <li key="${tip.id}">
                        <@Text style=paragraph>${tip.description}</@Text>
                      </li>
                    </#list>
                </ul>

                <@Text style=paragraph>
                    The more information you can put in the search bar, the more likely
                    you will be to either find the answer you need or feel confident
                    that no one else has asked the question before.
                </@Text>

                <@Hr style=divider />

                <@Heading tag="h2" style=title>
                    Take a break and read about the worst coder in the world
                </@Heading>

                <@Section style=buttonContainer>
                    <@Link style=button href="https://stackoverflow.blog/2019/10/22/">
                        I need a break
                    </@Link>
                </@Section>
            </@Section>
        </@Container>

        <@Section style=footer>
            <@Text style=footerText>
              You're receiving this email because your Stack Overflow activity
              triggered this tip or reminder.
            </@Text>

            <@Link href="/" style=footerLink>
              Unsubscribe from emails like this${' '}
            </@Link>
            <@Link href="/" style=footerLink>
              Edit email settings${' '}
            </@Link>
            <@Link href="/" style=footerLink>
              Contact us
            </@Link>
            <@Link href="/" style=footerLink>
              Privacy
            </@Link>

            <@Hr style=footerDivider />

            <@Img width=111 src=baseUrl + "images/stack-overflow-logo-sm.png" />
            <@Text style=footerAddress>
              <strong>Stack Overflow</strong>, 110 William Street, 28th Floor, New
              York, NY 10038
            </@Text>
            <@Text style=footerHeart>${'<3'}</@Text>
        </@Section>
    </@Body>
</@Html>


<#macro defineStyles>
    <#assign main = {
      "background-color": '#f3f3f5',
      "font-family": 'HelveticaNeue,Helvetica,Arial,sans-serif'
    }>

    <#assign headerContent = { "padding": '20px 30px 15px' }>

    <#assign headerContentTitle = {
      "color": '#fff',
      "font-size": '27px',
      "font-weight": 'bold',
      "line-height": '27px'
    }>

    <#assign headerContentSubtitle = {
      "color": '#fff',
      "font-size": '17px'
    }>

    <#assign headerImageContainer = {
      "padding": '30px 10px'
    }>

    <#assign headerImage = {
      "max-width": '100%'
    }>

    <#assign title = {
      "margin": '0 0 15px',
      "font-weight": 'bold',
      "font-size": '21px',
      "line-height": '21px',
      "color": '#0c0d0e'
    }>

    <#assign paragraph = {
      "font-size": '15px',
      "line-height": '21px',
      "color": '#3c3f44'
    }>

    <#assign divider = {
      "margin": '30px 0'
    }>

    <#assign container = {
      "width": '680px',
      "max-width": '100%',
      "margin": '0 auto',
      "background-color": '#ffffff'
    }>

    <#assign footer = {
      "width": '680px',
      "max-width": '100%',
      "margin": '32px auto 0 auto',
      "padding": '0 30px'
    }>

    <#assign content = {
      "padding": '30px 30px 40px 30px'
    }>

    <#assign logo = {
      "display": 'flex',
      "background": '#f3f3f5',
      "padding": '20px 30px'
    }>

    <#assign header = {
      "border-radius": '5px 5px 0 0',
      "display": 'flex',
      "flex-direciont": 'column',
      "background-color": '#2b2d6e'
    }>

    <#assign buttonContainer = {
      "margin-top": '24px',
      "display": 'block'
    }>

    <#assign button = {
      "background-color": '#0095ff',
      "border": '1px solid #0077cc',
      "font-size": '17px',
      "line-height": '17px',
      "padding": '13px 17px',
      "border-radius": '4px',
      "max-width": '120px',
      "color": '#fff'
    }>

    <#assign footerDivider = divider + {
      "border-color": '#d6d8db'
    }>

    <#assign footerText = {
      "font-size": '12px',
      "line-height": '15px',
      "color": '#9199a1',
      "margin": '0'
    }>

    <#assign footerLink = {
      "display": 'inline-block',
      "color": '#9199a1',
      "text-decoration": 'underline',
      "font-size": '12px',
      "margin-right": '10px',
      "margin-bottom": '0',
      "margin-top": '8px'
    }>

    <#assign footerAddress = {
      "margin": '4px 0',
      "font-size": '12px',
      "line-height": '15px',
      "color": '#9199a1'
    }>

    <#assign footerHeart = {
      "border-radius": '1px',
      "border": '1px solid #d6d9dc',
      "padding": '4px 6px 3px 6px',
      "font-size": '11px',
      "line-height": '11px',
      "font-family": 'Consolas,monospace',
      "color": '#e06c77',
      "max-width": 'min-content',
      "margin": '0 0 32px 0'
    }>
</#macro>