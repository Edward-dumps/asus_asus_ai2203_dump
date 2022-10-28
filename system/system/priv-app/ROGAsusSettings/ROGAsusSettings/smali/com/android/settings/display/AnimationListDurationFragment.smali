.class public Lcom/android/settings/display/AnimationListDurationFragment;
.super Lcom/android/settings/display/AnimationListWindowFragment;
.source "AnimationListDurationFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/settings/display/AnimationListDurationFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/AnimationListDurationFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/AnimationListDurationFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/display/AnimationListWindowFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AnimationListDurationFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 27
    sget p0, Lcom/android/settings/R$xml;->animation_list_duration:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/display/AnimationListWindowFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
