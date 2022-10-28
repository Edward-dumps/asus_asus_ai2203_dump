.class public Lcom/android/settings/flipfont/FontListUtils;
.super Ljava/lang/Object;
.source "FontListUtils.java"


# static fields
.field private static mFontNames:Ljava/util/Vector;

.field private static mFontPackageNames:Ljava/util/Vector;

.field private static mTypefaceFiles:Ljava/util/Vector;

.field private static mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/settings/flipfont/FontListUtils;->mFontPackageNames:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/settings/flipfont/FontListUtils;->mFontNames:Ljava/util/Vector;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFiles:Ljava/util/Vector;

    .line 48
    new-instance v0, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v0}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    sput-object v0, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    return-void
.end method

.method private static copyFileWithCR(Landroid/content/Context;Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/fonts/"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 328
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    invoke-virtual {p1, p2, p0, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1

    .line 338
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p1

    :catch_1
    return v0
.end method

.method public static getAllFontTypes(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/android/settings/flipfont/FontListUtils;->mFontPackageNames:Ljava/util/Vector;

    .line 58
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/android/settings/flipfont/FontListUtils;->mFontNames:Ljava/util/Vector;

    .line 59
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sput-object v1, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFiles:Ljava/util/Vector;

    .line 63
    new-instance v1, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    sput-object v1, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    .line 64
    iput-object p0, v1, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 68
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 71
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 72
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.monotype.android.font."

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    invoke-virtual {v1, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 76
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 79
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 80
    sget-object v7, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-virtual {v7, v6, v5}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_1
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    sget-object v3, Lcom/android/settings/flipfont/FontListUtils;->mFontNames:Ljava/util/Vector;

    sget-object v4, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFiles:Ljava/util/Vector;

    sget-object v5, Lcom/android/settings/flipfont/FontListUtils;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/fonts/UIFont.ttf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "/system/fonts/DroidSans.ttf"

    .line 96
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 103
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 105
    :goto_2
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 106
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/android/settings/flipfont/FontListUtils;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {p0, v2, v3}, Lcom/android/settings/flipfont/FontListUtils;->getFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_3

    .line 113
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 114
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 115
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private static getFont(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4

    const-string v0, "fonts/"

    const-string v1, ".xml"

    const-string v2, ".ttf"

    .line 195
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 201
    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 202
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 216
    :catch_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/flipfont/FontListUtils;->getFontfromCR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFontfromCR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/fonts/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 143
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string p1, "font"

    .line 151
    invoke-static {p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    :try_start_3
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 168
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 169
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 172
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 173
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 174
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 175
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 183
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p0

    :catch_0
    return-object v0

    .line 154
    :catch_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-object v0
.end method

.method public static setFont(Landroid/content/Context;I)V
    .locals 17

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 228
    sget-object v1, Lcom/android/settings/flipfont/FontListUtils;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 232
    new-instance v10, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v10}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    const/4 v11, 0x1

    const-string v2, "default"

    if-eqz v9, :cond_4

    .line 235
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 240
    :cond_0
    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-virtual {v2, v9}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v12

    const-string v2, ".xml"

    .line 244
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 245
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_0

    :cond_1
    move-object v13, v9

    .line 247
    :goto_0
    invoke-virtual {v10, v7, v13}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    if-eqz v12, :cond_2

    move v15, v3

    .line 253
    :goto_1
    iget-object v2, v12, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_2

    .line 254
    iget-object v2, v12, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/TypefaceFile;

    .line 257
    :try_start_0
    sget-object v3, Lcom/android/settings/flipfont/FontListUtils;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 259
    invoke-virtual {v8, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 260
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 261
    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 266
    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v14, v3, v4}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v4

    .line 267
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_2

    :catch_0
    move-object/from16 v16, v1

    .line 271
    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v14

    move-object/from16 v4, v16

    .line 270
    invoke-static/range {v1 .. v6}, Lcom/android/settings/flipfont/FontListUtils;->copyFileWithCR(Landroid/content/Context;Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v3, v1

    move-object/from16 v1, v16

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    if-ne v3, v11, :cond_3

    return-void

    .line 281
    :cond_3
    invoke-virtual {v10, v7, v13}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/flipfont/FontListUtils;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v7, v1, v0}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_3
    const-string v0, " "

    .line 236
    invoke-virtual {v10, v7, v0}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v10, v7, v2, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 289
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 292
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 297
    :goto_5
    :try_start_2
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 300
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v11

    iput v2, v0, Landroid/content/res/Configuration;->FlipFont:I

    .line 302
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string v0, "activity"

    .line 307
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "com.android.settings"

    .line 310
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    return-void
.end method
