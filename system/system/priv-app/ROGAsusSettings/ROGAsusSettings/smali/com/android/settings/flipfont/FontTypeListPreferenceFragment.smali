.class public Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FontTypeListPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static REBOOT:Z = false


# instance fields
.field private mClickedItem:I

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mFontListview:Landroid/widget/ListView;

.field private mPreviousFont:I

.field private mRebootDialogIsActive:Z

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field private mState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSelectDialogIsActive:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mRebootDialogIsActive:Z

    .line 50
    iput v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    const/4 v1, -0x1

    .line 53
    iput v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mPreviousFont:I

    .line 56
    iput v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    .line 58
    iput-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mState:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Landroid/os/Bundle;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mState:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)Landroid/widget/ListView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListview:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->DEBUG:Z

    return v0
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 405
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 411
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

    .line 414
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    invoke-virtual {p1, p2, p0, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1

    .line 424
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p1

    :catch_1
    return v0
.end method

.method private loadPreferences()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SelectDialogIsActive"

    .line 128
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSelectDialogIsActive:Z

    const-string v1, "RebootDialogIsActive"

    .line 129
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mRebootDialogIsActive:Z

    const-string v1, "SavedClickedItem"

    .line 130
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    return-void
.end method

.method private savePreferences()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSelectDialogIsActive:Z

    const-string v2, "SelectDialogIsActive"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mRebootDialogIsActive:Z

    const-string v2, "RebootDialogIsActive"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    const-string v2, "SavedClickedItem"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    invoke-static {v1, p0}, Lcom/android/settings/flipfont/FontListAdapter;->getFontPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SavedFontPackage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected errorDialog(Ljava/lang/String;)V
    .locals 2

    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x1080027

    .line 386
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 389
    new-instance v1, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$2;-><init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez p1, :cond_0

    .line 93
    new-instance p1, Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListview:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListview:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;-><init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 69
    :cond_0
    new-instance p1, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$LoadListTask;-><init>(Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;Lcom/android/settings/flipfont/FontTypeListPreferenceFragment$1;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 71
    sget p1, Lcom/android/settings/R$string;->monotype_preference_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 78
    sget p3, Lcom/android/settings/R$layout;->font_type_listview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 79
    sget p2, Lcom/android/settings/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListview:Landroid/widget/ListView;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 p2, 0x1

    .line 82
    invoke-virtual {p0, p2, p1, v0}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    :cond_0
    return-void
.end method

.method public onOkButtonPressed()Z
    .locals 15

    .line 235
    iget-object v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 254
    iget v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    iput v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget v2, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    new-instance v8, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v8}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    const-string v2, "default"

    const/4 v9, 0x1

    if-eqz v1, :cond_6

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-virtual {v2, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v10

    const-string v2, ".xml"

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v11, 0x0

    if-lez v2, :cond_2

    .line 282
    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    :cond_2
    move-object v12, v1

    .line 284
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v8, v2, v12}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    move v2, v11

    if-eqz v10, :cond_3

    move v14, v2

    .line 290
    :goto_1
    iget-object v3, v10, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_3

    .line 291
    iget-object v2, v10, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/flipfont/TypefaceFile;

    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v4, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v3, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 297
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 298
    iget-object v4, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 302
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

    .line 303
    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v13, v3, v4}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v4

    .line 304
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_2

    .line 307
    :catch_0
    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, v8

    move-object v4, v13

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    if-ne v2, v9, :cond_5

    .line 313
    iget v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    .line 317
    invoke-direct {p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->savePreferences()V

    .line 318
    sget-boolean v0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "FlipFont"

    const-string v1, "**onOkButtonPressed - enospc error **"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->storage_low_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->errorDialog(Ljava/lang/String;)V

    return v11

    .line 330
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v0, v12}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    iget v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    .line 333
    invoke-direct {p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->savePreferences()V

    .line 335
    iget v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mPreviousFont:I

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v3, v3, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget v4, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 265
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v8, v0, v3}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    .line 267
    invoke-direct {p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->savePreferences()V

    .line 269
    iget v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mClickedItem:I

    iput v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mPreviousFont:I

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v8, v0, v2, v2}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 344
    sget-boolean v2, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->REBOOT:Z

    if-nez v2, :cond_7

    const-wide/16 v2, 0x64

    .line 347
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    .line 349
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 354
    :goto_5
    :try_start_2
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v9

    iput v1, v2, Landroid/content/res/Configuration;->FlipFont:I

    .line 359
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 364
    :catch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const-string p0, "activity"

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, "com.android.settings"

    .line 367
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    :cond_7
    return v9
.end method

.method protected startFontList()V
    .locals 3

    .line 152
    invoke-direct {p0}, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->loadPreferences()V

    .line 156
    iget v0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mSavedClickedItem:I

    .line 157
    iget-object v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mPreviousFont:I

    if-gez v1, :cond_0

    const/4 v1, -0x1

    .line 160
    iput v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mPreviousFont:I

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListview:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/flipfont/FontTypeListPreferenceFragment;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
