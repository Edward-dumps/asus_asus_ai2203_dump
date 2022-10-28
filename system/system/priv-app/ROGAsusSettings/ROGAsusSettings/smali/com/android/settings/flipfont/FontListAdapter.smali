.class public Lcom/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field private droidSansFont:Landroid/graphics/Typeface;

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 101
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 52
    iput-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 55
    new-instance v1, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    .line 58
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 61
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 64
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 67
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 78
    iput-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 102
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v0, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x80

    .line 109
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    const/4 p1, 0x0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.monotype.android.font."

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 117
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 118
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 122
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-virtual {v3, v2, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    :catch_1
    new-instance p1, Ljava/io/File;

    const-string v0, "/system/fonts/UIFont.ttf"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    const-string p1, "/system/fonts/DroidSans.ttf"

    .line 138
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    :goto_1
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const-string v0, "fonts/"

    const-string v1, ".xml"

    const-string v2, ".ttf"

    .line 324
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 328
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 342
    :catch_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFontPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 88
    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object p0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "default"

    :cond_0
    return-object p0
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    const/4 v0, 0x0

    .line 263
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 269
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

    .line 272
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string p1, "font"

    .line 280
    invoke-static {p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    :try_start_3
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 292
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 297
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 298
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 301
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 302
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 303
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 304
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 312
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 313
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p0

    :catch_0
    return-object v0

    .line 283
    :catch_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    return-object v0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    if-eqz p0, :cond_0

    .line 220
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "OEM Font1"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->monotype_dialog_font_oem_font1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    const-string v0, "OEM Font2"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->monotype_dialog_font_oem_font2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    const-string v0, "OEM Font3"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->monotype_dialog_font_oem_font3:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 191
    iget-object p2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/android/settings/R$layout;->asus_simple_list_item_single_choice:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    goto :goto_0

    .line 193
    :cond_0
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 195
    :goto_0
    iget-object p3, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p3

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {p2, p3, v0, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintCheckedTextView(Landroid/widget/CheckedTextView;IILandroid/content/Context;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 200
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    const-string/jumbo p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 201
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 202
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 203
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/high16 p1, 0x42820000    # 65.0f

    int-to-float p0, p0

    const/high16 p3, 0x43200000    # 160.0f

    div-float/2addr p0, p3

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 207
    invoke-virtual {p2, p0}, Landroid/widget/CheckedTextView;->setHeight(I)V

    return-object p2
.end method

.method public loadTypefaces()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-direct {p0, v1, v2}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 246
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
