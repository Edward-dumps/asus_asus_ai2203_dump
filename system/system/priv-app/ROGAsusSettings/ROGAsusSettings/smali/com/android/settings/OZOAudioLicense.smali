.class public Lcom/android/settings/OZOAudioLicense;
.super Lcom/android/internal/app/AlertActivity;
.source "OZOAudioLicense.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private showErrorAndFinish()V
    .locals 2

    .line 80
    sget v0, Lcom/android/settings/R$string;->settings_license_activity_unavailable:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->requestWindowFeature(I)Z

    .line 49
    sget p1, Lcom/android/settings/R$layout;->ozo_license:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 52
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "ozo_audio_software_license.html"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/android/settings/OZOAudioLicense;->showErrorAndFinish()V

    goto :goto_1

    .line 65
    :cond_2
    sget v1, Lcom/android/settings/R$id;->ozo_licence:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 56
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 75
    :catch_0
    invoke-direct {p0}, Lcom/android/settings/OZOAudioLicense;->showErrorAndFinish()V

    goto :goto_3

    .line 73
    :catch_1
    invoke-direct {p0}, Lcom/android/settings/OZOAudioLicense;->showErrorAndFinish()V

    :goto_3
    return-void
.end method
