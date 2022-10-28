.class Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController$1;
.super Ljava/lang/Object;
.source "AsusCaseTypePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController$1;->this$0:Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController$1;->this$0:Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;

    invoke-static {p0}, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;->access$000(Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/flipcamera/AsusCaseTypePreferenceController;->startCaseTypeSettings(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method
