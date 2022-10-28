.class public Lcom/android/settings/flipfont/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# instance fields
.field private mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/flipfont/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/flipfont/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mSerifFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/flipfont/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mSerifFonts:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mMonospaceFonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFontPackageName()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/flipfont/Typeface;->mFontPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getSansName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/flipfont/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-object p0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/flipfont/Typeface;->mFontPackageName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/flipfont/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-void
.end method
