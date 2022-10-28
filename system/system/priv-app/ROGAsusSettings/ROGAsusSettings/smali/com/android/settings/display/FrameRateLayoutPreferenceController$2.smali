.class Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;
.super Ljava/lang/Object;
.source "FrameRateLayoutPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FrameRateLayoutPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$000(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$000(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$300(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {v1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$300(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {v2}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$300(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$2;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$000(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/widget/ListView;

    move-result-object p0

    invoke-static {v2, p0, v0, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintListViewSingleChoiceColor(Landroid/content/Context;Landroid/widget/ListView;II)V

    :cond_0
    return-void
.end method
