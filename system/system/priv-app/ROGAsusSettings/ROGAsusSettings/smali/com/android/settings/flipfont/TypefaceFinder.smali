.class public Lcom/android/settings/flipfont/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/flipfont/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    return-void
.end method

.method private findTypefacesWithCR(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/fonts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    .line 63
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v4, "\n"

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    if-eqz v4, :cond_3

    .line 71
    array-length v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/xml/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    aget-object v5, v4, v0

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/settings/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_1
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/Typeface;

    .line 240
    invoke-virtual {v0}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "xml"

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    array-length v2, v1

    if-nez v2, :cond_0

    .line 107
    invoke-direct {p0, p2}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefacesWithCR(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 112
    :cond_0
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 114
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xml/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 115
    aget-object v3, v1, v0

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/settings/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_1
    return v0
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->monotype_default_font:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p1, "default"

    .line 167
    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string p1, ""

    .line 168
    invoke-virtual {p4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v0, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/settings/flipfont/TypefaceFinder;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    .line 131
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/android/settings/flipfont/TypefaceParser;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceParser;-><init>()V

    .line 136
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 137
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 139
    invoke-virtual {v1}, Lcom/android/settings/flipfont/TypefaceParser;->getParsedData()Lcom/android/settings/flipfont/Typeface;

    move-result-object p2

    .line 141
    invoke-virtual {p2, p1}, Lcom/android/settings/flipfont/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2, p3}, Lcom/android/settings/flipfont/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
