<#--<#include "components.ftlh">-->

<#assign baseUrl = ''>
<@defineStyles />

<@Html>
    <@Head />
    <@Preview>#CodePenChallenge: Cubes</@Preview>
    <@Body style=main>
      <@Section style=header>
        <@Img
          style=imgHeader
          src= baseUrl + "images/codepen-challengers.png"
          width=600
          alt="codepen"
        />
      </@Section>
      <@Container style=container>
        <@Text style=challengeLink>
          <@Link style=link>View this Challenge on CodePen</@Link>
        </@Text>

        <@Heading style=heading>
          <strong>This week:</strong> #CodePenChallenge:${' '}
          <@Text style=cubeText>Cubes</@Text>
        </@Heading>

        <@Section style=section>
          <@Text style=text>The Shape challenge continues!</@Text>

          <@Text style=text>
            Last week, we kicked things off with round shapes. We "rounded" up
            the Pens from week one in our${' '}
            <@Link style=blueLink>#CodePenChallenge: Round</@Link> collection.
          </@Text>

          <@Text style=text>This week, we move on to cubes 🧊</@Text>

          <@Text style=text>
            Creating cubes in the browser is all about mastery of illusion. Take
            control of perspective and shadows and you can make the magic of 3D
            on a flat screen 🧙
          </@Text>

          <@Text style=text>
            This week is a fun chance to work on your CSS shape-building skills,
            or dig into a 3D JavaScript library like Three.js.
          </@Text>

          <@Text style=text>
            This week's starter template features an ice cube emoji to help
            inspire a "cool" idea for your Pen. As always, the template is just
            as jumping off point. Feel free to incorporate the 🧊 in your
            creation, add more elements, or freeze it out completely and start
            over from scratch!
          </@Text>

          <@Text style=yourChallenge>
            💪 <strong>Your Challenge:</strong>${' '}
            <@Link style=blueLink>
              create a Pen that includes cube shapes.
            </@Link>
          </@Text>

          <@Img
            src= baseUrl + "images/codepen-cube.png"
            width=600
            alt="codepen"
          />

          <@Section style=sectionPro>
            <@Img
              style=imagePro
              src= baseUrl + "images/codepen-pro.png"
              width=250
              alt="codepen"
            />

            <@Text>
              CodePen PRO combines a bunch of features that can help any
              front-end designer or developer at any experience level.
            </@Text>

            <@Button style=button pX=12 pY=12>
              <strong>Learn More</strong>
            </@Button>
          </@Section>
        </@Section>

        <@Text style=yellowSection>
          <strong>To participate:</strong>${' '}
          <@Link style=blueLink>Create a Pen →</@Link> and tag it${' '}
          <@Link style=blueLink>
            <strong>codepenchallenge</strong>
          </@Link>${' '}
          and
          <@Link style=blueLink>
            ${' '}
            <strong>cpc-cubes</strong>
          </@Link>
          . We'll be watching and gathering the Pens into a Collection, and
          sharing on <@Link style=blueLink>Twitter</@Link> and${' '}
          <@Link style=blueLink>Instagram</@Link> (Use the #CodePenChallenge tag
          on Twitter and Instagram as well).
        </@Text>

        <@Section style=section>
          <@Column style=ideas>
            <@Text style=ideasTitle>IDEAS!</@Text>

            <@Section style=yellowCard>
              🌟
              <@Text style=textCard>
                This week we move from 2 dimensions to three! Maybe you could
                exercise your <@Link style=blueLink>perspective</@Link> in CSS
                to create a 3D cube. Or, you can try out creating 3D shapes in
                JavaScript, using <@Link style=blueLink>WebGL</@Link> or
                building a <@Link style=blueLink>Three.js scene</@Link>.
              </@Text>
            </@Section>

            <@Section style=yellowCard>
              🌟
              <@Text style=textCard>
                There's more to cubes than just six square sides. There are
                variations on the cube that could be fun to play with this week:${' '}
                <@Link style=blueLink>cuboid shapes</@Link> are hexahedrons with
                faces that aren't always squares. And if you want to really push
                the boundaries of shape, consider the 4 dimensional${' '}
                <@Link style=blueLink>tesseract!</@Link>
              </@Text>
            </@Section>

            <@Section style=yellowCard>
              🌟
              <@Text style=textCard>
                Here's a mind-bending idea that can combine the round shapes
                from week one with this week's cube theme:${' '}
                <@Link style=blueLink>Spherical Cubes</@Link> 😳 Solving
                longstanding mathematical mysteries is probably outside the
                scope of a CodePen challenge, but you could use front-end tools
                to explore fitting spheres into cubes, or vice-versa.
              </@Text>
            </@Section>
          </@Column>
          <@Column style=resources>
            <@Text style=resourcesTitle>RESOURCES!</@Text>

            <@Section style=blueCard>
              📖
              <@Text style=textCard>
                Learn all about${' '}
                <@Link style=blueLink>How CSS Perspective Works</@Link> and how
                to build a 3D CSS cube from scratch in Amit Sheen's in-depth
                tutorial for CSS-Tricks. Or, check out stunning examples of
                WebGL cubes from Matthias Hurrle:${' '}
                <@Link style=blueLink>Just Ice</@Link> and${' '}
                <@Link style=blueLink>Posing</@Link>.
              </@Text>
            </@Section>

            <@Section style=blueCard>
              📖
              <@Text style=textCard>
                Want to go beyond the square cube? Draw inspiration from
                EntropyReversed's${' '}
                <@Link style=blueLink>Pulsating Tesseract</@Link>, Josetxu's${' '}
                <@Link style=blueLink>Rainbow Cuboid Loader</@Link>, or Ana
                Tudor's <@Link style=blueLink>Pure CSS cuboid jellyfish</@Link>.
              </@Text>
            </@Section>

            <@Section style=blueCard>
              📖
              <@Text style=textCard>
                Did that spherical cubes concept pique your interest? Explore
                Ryan Mulligan's <@Link style=blueLink>Cube Sphere</@Link>, Munir
                Safi's${' '}
                <@Link style=blueLink>
                  3D Sphere to Cube Animation With Virtual Trackball
                </@Link>${' '}
                and Ana Tudor's${' '}
                <@Link style=blueLink>Infinitely unpack prism</@Link> for more
                mindbending cube concepts that test the boundaries of how shapes
                interact with each other.
              </@Text>
            </@Section>
          </@Column>
        </@Section>

        <@Section style=goToChallenge>
          <@Button style=footerButton pY=15 pX=30>
            Go to Challenge Page
          </@Button>
        </@Section>

        <@Section style=footer>
          <@Text style=footerText>
            You can adjust your${' '}
            <@Link style=footerLink>email preferences</@Link> any time, or${' '}
            <@Link style=footerLink>instantly opt out</@Link> of emails of this
            kind. Need help with anything? Hit up${' '}
            <@Link style=footerLink>support</@Link>.
          </@Text>
        </@Section>
      </@Container>
    </@Body>
</@Html>


<#macro defineStyles>
    <#assign main = {
      "font-family": '"Google Sans",Roboto,RobotoDraft,Helvetica,Arial,sans-serif',
      "background-color": '#505050',
      "margin": '0'
    }>

    <#assign imgHeader = {
      "margin": 'auto'
    }>

    <#assign header = {
      "width": '100%',
      "background-color": '#191919',
      "margin": '0 auto',
      "padding-bottom": '30px',
      "z-index": '999'
    }>

    <#assign container = {
      "padding-left": '12px',
      "padding-right": '12px',
      "margin": '0 auto',
      "width": '648px',
      "max-width": '648px',
      "position": 'relative'
    }>

    <#assign challengeLink = {
      "background-color": '#505050',
      "text-align": 'center',
      "padding": '10px 0 25px 0',
      "font-size": '13px',
      "position": 'absolute',
      "width": '100%',
      "max-width": '648px',
      "top": '-28px',
      "margin": '0 0 16px 0'
    }>

    <#assign link = {
      "color": '#fff',
      "cursor": 'pointer'
    }>

    <#assign blueLink = {
      "color": '#15c',
      "cursor": 'pointer'
    }>

    <#assign heading = {
      "background": '#f0d361',
      "padding": '30px',
      "color": '#191919',
      "font-weight": '400',
      "margin-bottom": '0'
    }>

    <#assign section = {
      "margin": '0',
      "background": '#fff',
      "padding": '0 24px'
    }>

    <#assign yellowSection = {
      "background": '#f5d247',
      "padding": '30px',
      "font-size": '18px',
      "line-height": '1.5'
    }>

    <#assign text = {
      "font-size": '16px'
    }>

    <#assign cubeText = { "font-size": '32px', "margin": '4px 0 0 0' }>

    <#assign yourChallenge = {
      "font-size": '16px',
      "border": '6px solid #ebd473',
      "padding": '20px',
      "margin": '0 0 40px 0'
    }>

    <#assign sectionPro = {
      "margin-top": '40px',
      "margin-bottom": '24px',
      "text-align": 'center',
      "background": '#0b112a',
      "color": '#fff',
      "padding": '35px 20px 30px 20px',
      "border": '6px solid #2138c6'
    }>

    <#assign imagePro = { "margin": '0 auto 30px auto' }>

    <#assign button = {
      "background": '#2138c6',
      "color": '#fff',
      "border": '0',
      "font-size": '15px',
      "line-height": '18px',
      "cursor": 'pointer',
      "border-radius": '4px'
    }>

    <#assign resourcesTitle = {
      "font-weight": '900',
      "line-height": '1.1',
      "margin-top": '-40px',
      "font-size": '18px'
    }>

    <#assign ideasTitle = {
      "font-weight": '900',
      "line-height": '1.1',
      "font-size": '18px'
    }>

    <#assign ideas = {
      "width": '50%',
      "padding-right": '10px'
    }>

    <#assign resources = {
      "width": '50%',
      "padding-left": '10px'
    }>

    <#assign card = {
      "padding": '20px',
      "margin": '0 0 20px 0',
      "border-radius": '10px',
      "font-size": '36px',
      "text-align": 'center'
    }>

    <#assign yellowCard = card + {
      "background": '#fff4c8',
      "border": '1px solid #f4d247'
    }>

    <#assign blueCard = card + {
      "background": '#d9f6ff',
      "border": '1px solid #92bfd0'
    }>

    <#assign textCard = {
      "font-size": '13px',
      "text-align": 'left'
    }>

    <#assign goToChallenge = {
      "margin": '40px 0 120px 0',
      "text-align": 'center'
    }>

    <#assign footerButton = {
      "font-size": '26px',
      "color": '#15c',
      "background": '#222',
      "border-radius": '4px',
      "font-weight": 'bold',
      "cursor": 'pointer'
    }>

    <#assign footer = {
      "background": '#fff',
      "color": '#505050',
      "padding": '0 24px',
      "margin-bottom": '48px'
    }>

    <#assign footerText = {
      "font-size": '13px'
    }>

    <#assign footerLink = {
      "text-decoration": 'underline',
      "color": '#505050',
      "cursor": 'pointer'
    }>
</#macro>