# FreeMarker Email

A port of [React Email](https://react.email) to Java using the [FreeMarker](https://freemarker.apache.org)
templating library.  

This is a set of standard components (macros) to help you build amazing emails without having to
deal with the mess of creating table-based layouts and maintaining archaic markup. It takes care of inconsistencies
between Gmail, Outlook, and other email clients for you.  
A great resource showing support for CSS and HTML features for many email clients is https://www.caniemail.com

For some included samples, see the example templates [here](src/test/resources/examples).

## Components

Each component is in its own template file. To import/include all the components,
[components.ftlh](src/main/resources/templates/email/components.ftlh) is provided which includes all of them.

Most components allowing adding arbitrary additional attributes after the documented params.  
E.g. you can use `align="right"` on the Column component, even though it's not an explicit parameter.

- [Html](#html)  
- [Head](#head)
- [Button](#button)
- [Column](#column)
- [Row](#row)
- [Container](#container)
- [Font](#font)
- [Heading](#heading)
- [Hr](#hr)
- [Image](#image)
- [Link](#link)
- [Preview](#preview)
- [Section](#section)
- [Text](#text)


### Html
An html component to wrap emails.
```freemarker
<@Html lang="en" dir="ltr">
    <@Button href="https://example.com" style={ 'color': '#61dafb' }>
        Click me
    </@Button>
</@Html>
```
#### Params
| Name | Type   | Default | Description                                         |
|:----:| ------ |:-------:|-----------------------------------------------------|
| lang | string |  `en`   | Identify the language of text content in the email  |
| dir  | string |  `ltr`  | Identify the direction of text content in the email |


### Head
Contains head components, related to the document such as style and meta elements.
```freemarker
<@Head>
    <title>My email title</title>
</@Head>
```


### Button
A link that is styled to look like a button.  

ℹ **Semantics**: Quite often in the email world we talk about buttons, when actually we mean links.  
Behind the scenes this is a &lt;a&gt; tag, that is styled like a &lt;button&gt; tag.
```freemarker
<@Button href="https://example.com" style={ 'color': '#61dafb' }>
    Click me
</@Button>
```
#### Params
|  Name  |         Type         | Default  | Description                                      |
|:------:|:--------------------:|:--------:|--------------------------------------------------|
|  href  | string _(required)_  |          | Link to be triggered when the button is clicked  |
| target |        string        | `_blank` | Specify the target attribute for the button link |
|   pX   | number &#124; string |   `0`    | Horizontal padding in px, affecting button width |
|   pY   | number &#124; string |   `0`    | Vertical padding in px, affecting button height  |
| style  |  map &#124; string   |          | Additional CSS styling for the link              |


### Column
Display a column/cell that separates content areas vertically in your email.
A column needs to be used in combination with a Row component.
```freemarker
<@Row>
    <@Column>A</@Column>
    <@Column>B</@Column>
    <@Column>C</@Column>
</@Row>
```
#### Params
| Name  | Type              | Default | Description                         |
|-------|-------------------|---------|-------------------------------------|
| style | map &#124; string |         | Additional CSS styling for the cell |


### Row
Display a row that separates content areas horizontally in your email.
```freemarker
<@Section>
    <@Row>
        <@Column>Row 1, Column 1</@Column>
        <@Column>Row 1, Column 2</@Column>
    </@Row>
    <@Row>
        <@Column>Row 2, Column 1</@Column>
        <@Column>Row 2, Column 2</@Column>
    </@Row>
</@Section>
```
#### Params
| Name  | Type              | Default | Description            |
|-------|-------------------|---------|------------------------|
| style | map &#124; string |         | Additional CSS styling |


### Container
A layout component that centers all the email content.
```freemarker
<@Container>
    <@Button href="https://example.com" style={ 'color': '#61dafb' }>
        Click me
    </@Button>
</@Container>
```
#### Params
| Name  | Type              | Default | Description            |
|-------|-------------------|---------|------------------------|
| style | map &#124; string |         | Additional CSS styling |


### Font
A Font component to set your fonts; this applies your font to all tags inside your email. 
Note: not all email clients support web fonts, this is why it is important to configure your `fallbackFontFamily`.
To view all email clients that support web fonts [see here](https://www.caniemail.com/features/css-at-font-face/).
```freemarker
<@Html lang="en">
    <@Head>
        <@Font
            fontFamily="Roboto"
            fallbackFontFamily="Verdana"
            webFont={
              'url': 'https://fonts.gstatic.com/s/roboto/v27/KFOmCnqEu92Fr1Mu4mxKKTU1Kg.woff2',
              'format': 'woff2',
            }
            fontWeight=400
            fontStyle="normal"
        />
    </@Head>
</@Html>
```
#### Params
|        Name        |               Type                | Default  | Description                                                                                                                      |
|:------------------:|:---------------------------------:|:--------:|----------------------------------------------------------------------------------------------------------------------------------|
|     fontFamily     |              string               |          | The font-family you want to use. If the webFont property is configured, this should contain the name of that font                |
| fallbackFontFamily |              string               |          | The fallback font family the system should use if web fonts are not supported or the chosen font is not installed on the system. |
|      webFont       | {'url': string, 'format': string} |          | The webFont that supporting email clients should use                                                                             |
|     fontWeight     |       number &#124; string        |  `400`   | The font-weight of the font                                                                                                      |
|     fontStyle      |              string               | `normal` | The font-style of the font                                                                                                       |


### Heading
A block of heading text.
```freemarker
<@Heading tag="h2">Lorem ipsum</@Heading>
```
#### Params
| Name  |         Type         | Default | Description                                                 |
|:-----:|:--------------------:|:-------:|-------------------------------------------------------------|
|  tag  |        string        |  `h1`   | Render component as h1, h2, h3, h4, h5 or h6.               |
|   m   | number &#124; string |         | A shortcut for margin CSS property.                         |
|  mx   | number &#124; string |         | A shortcut for margin-left and margin-right CSS properties. |
|  my   | number &#124; string |         | A shortcut for margin-top and margin-bottom CSS properties. |
|  mt   | number &#124; string |         | A shortcut for margin-top CSS property.                     |
|  mr   | number &#124; string |         | A shortcut for margin-right CSS property.                   |
|  mb   | number &#124; string |         | A shortcut for margin-bottom CSS property.                  |
|  ml   | number &#124; string |         | A shortcut for margin-left CSS property.                    |
| style |  map &#124; string   |         | Additional CSS styling                                      |


### Hr
Display a divider that separates content areas in your email.
```freemarker
<@Hr />
```
#### Params
| Name  | Type              | Default | Description            |
|-------|-------------------|---------|------------------------|
| style | map &#124; string |         | Additional CSS styling |


### Image
Display an image in your email.

💡 All email clients can display .png, .gif, and .jpg images. Unfortunately, .svg images are not well-supported, 
regardless of how they’re referenced, so avoid using these
(see **[Can I Email](https://www.caniemail.com/features/image-svg/)** for more information).
```freemarker
<@Img src="cat.jpg" alt="Cat" width=300 height=300 />
```
#### Params
|  Name  |       Type        | Default | Description                          |
|:------:|:-----------------:|---------|--------------------------------------|
|  alt   |      string       |         | Alternate description for an image   |
|  src   |      string       |         | The path to the image                |
| width  |      string       |         | The width of an image in pixels      |
| height |      string       |         | The height of an image in pixels     |
| style  | map &#124; string |         | Additional CSS styling for the image |


### Link
A hyperlink to web pages, email addresses, or anything else a URL can address.
```freemarker
<@Link href="https://example.com">Example</@Link>
```
#### Params
|  Name  |        Type         | Default  | Description                                      |
|:------:|:-------------------:|:--------:|--------------------------------------------------|
|  href  | string _(required)_ |          | Link to be triggered when the button is clicked  |
| target |       string        | `_blank` | Specify the target attribute for the button link |
| style  |  map &#124; string  |          | Additional CSS styling                           |


### Preview
A preview text that will be displayed in the inbox of the recipient.

ℹ Email clients have the concept of “preview text” which gives insight into what’s inside the 
email before you open it.
A good practice is to keep that text under 90 characters.
```freemarker
<@Preview>Email preview text</@Preview>
```


### Section
Display a section that can also be formatted using rows and columns.
```freemarker
<@Section>
    <@Text>Hello World</@Text>
</@Section>
```
```freemarker
<@Section>
    <@Row>
        <@Column>Column 1, Row 1</@Column>
        <@Column>Column 2, Row 1</@Column>
    </@Row>
    <@Row>
        <@Column>Column 1, Row 2</@Column>
        <@Column>Column 2, Row 2</@Column>
    </@Row>
</@Section>
```
#### Params
| Name  | Type              | Default | Description            |
|-------|-------------------|---------|------------------------|
| style | map &#124; string |         | Additional CSS styling |


### Text
A block of text separated by blank spaces (a paragraph).
```freemarker
<@Text>Lorem ipsum</@Text>
```
#### Params
| Name  | Type              | Default | Description            |
|-------|-------------------|---------|------------------------|
| style | map &#124; string |         | Additional CSS styling |