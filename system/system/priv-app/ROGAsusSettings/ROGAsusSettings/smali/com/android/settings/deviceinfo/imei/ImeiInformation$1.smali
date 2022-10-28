.class Lcom/android/settings/deviceinfo/imei/ImeiInformation$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ImeiInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/imei/ImeiInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 352
    sget p1, Lcom/android/settings/R$xml;->asus_device_info_phone_status:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 353
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
