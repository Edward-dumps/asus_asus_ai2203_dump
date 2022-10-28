.class public Lcom/android/settings/flipfont/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/settings/flipfont/Typeface;

.field private mFontFile:Lcom/android/settings/flipfont/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    .line 35
    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/TypefaceFile;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "font"

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 100
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    goto/16 :goto_0

    :cond_0
    const-string p1, "sans"

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    :cond_1
    const-string p1, "serif"

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    :cond_2
    const-string p1, "monospace"

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 109
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    :cond_3
    const-string p1, "file"

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 112
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 113
    iget-object p1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    if-eqz p1, :cond_8

    .line 114
    iget-boolean p2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    if-eqz p2, :cond_4

    .line 115
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object p0, p0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_4
    iget-boolean p2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    if-eqz p2, :cond_5

    .line 118
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object p0, p0, Lcom/android/settings/flipfont/Typeface;->mSerifFonts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_5
    iget-boolean p2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    if-eqz p2, :cond_8

    .line 121
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object p0, p0, Lcom/android/settings/flipfont/Typeface;->mMonospaceFonts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string p1, "filename"

    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 126
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    :cond_7
    const-string p1, "droidname"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 129
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    :cond_8
    :goto_0
    return-void
.end method

.method public getParsedData()Lcom/android/settings/flipfont/Typeface;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    return-object p0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/android/settings/flipfont/Typeface;

    invoke-direct {v0}, Lcom/android/settings/flipfont/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "font"

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 65
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    const-string p1, "displayname"

    .line 66
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/Typeface;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "sans"

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    :cond_1
    const-string p1, "serif"

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    :cond_2
    const-string p1, "monospace"

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    :cond_3
    const-string p1, "file"

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 79
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 80
    new-instance p1, Lcom/android/settings/flipfont/TypefaceFile;

    invoke-direct {p1}, Lcom/android/settings/flipfont/TypefaceFile;-><init>()V

    iput-object p1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    goto :goto_0

    :cond_4
    const-string p1, "filename"

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 83
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    :cond_5
    const-string p1, "droidname"

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 86
    iput-boolean p3, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    :cond_6
    :goto_0
    return-void
.end method
