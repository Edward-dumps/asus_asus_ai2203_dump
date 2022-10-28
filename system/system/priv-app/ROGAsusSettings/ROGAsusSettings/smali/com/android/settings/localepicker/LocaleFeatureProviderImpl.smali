.class public Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;
.super Ljava/lang/Object;
.source "LocaleFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/localepicker/LocaleFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocaleNames()Ljava/lang/String;
    .locals 3

    .line 31
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "ro.vendor.build.asus.sku"

    const-string v2, "WW"

    .line 33
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p0, v0, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\([^)]+\\)"

    const-string v2, ""

    .line 39
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\\uff08[^\uff09]+\\\uff09"

    .line 41
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    invoke-static {p0, v0, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
