.class public Lcom/android/settings/flipfont/FontListPreference;
.super Landroidx/preference/ListPreference;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/FontListPreference$LoadListTask;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static NO_CANCEL:Z = true

.field public static REBOOT:Z = false

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mClickedItem:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mListDialogIsActive:Z

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    .line 727
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/flipfont/FontListPreference;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 131
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 68
    iput-object p2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 80
    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    const/16 v1, 0x14

    .line 86
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 97
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 98
    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mListDialogIsActive:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    .line 112
    iput-object p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    .line 135
    sget-boolean p2, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "FlipFont"

    const-string v0, "FontListPreference(Context context, AttributeSet attrs)"

    .line 136
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->isFlipfontSupport()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p2, "MONOTYPE"

    .line 141
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 143
    sget p2, Lcom/android/settings/R$string;->monotype_preference_title:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x1

    .line 145
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    sget p1, Lcom/android/settings/R$string;->monotype_default_font:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 153
    sget p1, Lcom/android/settings/R$string;->monotype_preference_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipfont/FontListPreference;->getFontName_OEM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/preference/DialogPreference;->setDialogTitle(I)V

    .line 162
    sget-boolean p1, Lcom/android/settings/flipfont/FontListPreference;->NO_CANCEL:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/high16 p1, 0x1040000

    .line 167
    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 169
    :goto_1
    sget p1, Lcom/android/settings/R$drawable;->flipfont_icon:I

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setDialogIcon(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontListPreference;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/flipfont/FontListPreference;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/flipfont/FontListPreference;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 338
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
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

    .line 347
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 354
    invoke-virtual {p1, p2, p0, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1

    .line 357
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p1

    :catch_1
    return v0
.end method

.method private getFontName_OEM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "OEM Font1"

    .line 117
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->monotype_dialog_font_oem_font1:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "OEM Font2"

    .line 119
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->monotype_dialog_font_oem_font2:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "OEM Font3"

    .line 121
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->monotype_dialog_font_oem_font3:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_2
    :goto_0
    return-object p2
.end method


# virtual methods
.method protected errorDialog(Ljava/lang/String;)V
    .locals 2

    .line 829
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 835
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 838
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x1080027

    .line 841
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 844
    new-instance v1, Lcom/android/settings/flipfont/FontListPreference$8;

    invoke-direct {v1, p0}, Lcom/android/settings/flipfont/FontListPreference$8;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 850
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public isFlipfontSupport()Z
    .locals 4

    const-string p0, "========ReflectionMethods.isFlipfontSupport = false ==============="

    const-string v0, "FontListPreference"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.graphics.Typeface"

    .line 857
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFlipFontUsed"

    .line 858
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    const-string v2, "========ReflectionMethods.isFlipfontSupport = true ==============="

    .line 860
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    .line 871
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchFieldException e="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception v2

    .line 865
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassNotFoundException e="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public loadPreferences()V
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SelectDialogIsActive"

    .line 651
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    const-string v1, "RebootDialogIsActive"

    .line 652
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    const-string v1, "SavedClickedItem"

    .line 653
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    return-void
.end method

.method protected onClick()V
    .locals 2

    const-string v0, "FlipFont"

    const-string v1, "onClick"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListPreference$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onOkButtonPressed()Z
    .locals 15

    .line 374
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 393
    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    new-instance v8, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v8}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    const-string v2, "default"

    const/4 v9, 0x1

    if-eqz v1, :cond_6

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-virtual {v2, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v10

    const-string v2, ".xml"

    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v11, 0x0

    if-lez v2, :cond_2

    .line 421
    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    :cond_2
    move-object v12, v1

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v8, v2, v12}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    move v2, v11

    if-eqz v10, :cond_3

    move v14, v2

    .line 429
    :goto_1
    iget-object v3, v10, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_3

    .line 430
    iget-object v2, v10, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/TypefaceFile;

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 436
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 437
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 439
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 441
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

    .line 442
    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v13, v3, v4}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v4

    .line 443
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_2

    .line 447
    :catch_0
    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, v8

    move-object v4, v13

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/flipfont/FontListPreference;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, v9, :cond_5

    .line 454
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 459
    sget-boolean v0, Lcom/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FlipFont"

    const-string v1, "**onOkButtonPressed - enospc error **"

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->storage_low_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->errorDialog(Ljava/lang/String;)V

    return v11

    .line 469
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 471
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v8, v0, v12}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 476
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 478
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 403
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 404
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, " "

    invoke-virtual {v8, v0, v3}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 408
    iget v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 410
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v8, v0, v2, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 485
    sget-boolean v2, Lcom/android/settings/flipfont/FontListPreference;->REBOOT:Z

    if-nez v2, :cond_7

    const-wide/16 v2, 0x64

    .line 488
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    .line 491
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 496
    :goto_5
    :try_start_2
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 499
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v9

    iput v1, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 501
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 507
    :catch_2
    iget-object p0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, "com.android.settings"

    .line 510
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    :cond_7
    return v9
.end method

.method protected savePreferences()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 633
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    const-string v2, "SelectDialogIsActive"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 637
    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mRebootDialogIsActive:Z

    const-string v2, "RebootDialogIsActive"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 638
    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    const-string v2, "SavedClickedItem"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 639
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-static {v1, p0}, Lcom/android/settings/flipfont/FontListAdapter;->getFontPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SavedFontPackage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected startFontList()V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    const-string v0, "MONOTYPE"

    .line 194
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const-string v1, "default"

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 200
    iput v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 202
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    sget v1, Lcom/android/settings/R$string;->monotype_preference_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 204
    sget v1, Lcom/android/settings/R$drawable;->flipfont_icon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 205
    sget v1, Lcom/android/settings/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    new-instance v3, Lcom/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialog:Landroid/app/AlertDialog;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
