.class Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;
.super Ljava/lang/Object;
.source "FrameRateLayoutPreferenceController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 186
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 189
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$000(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 192
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$100(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 193
    iget-object p2, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-virtual {p2, p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->setFpsByService(I)V

    .line 194
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$1;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$100(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p3

    invoke-static {p0, p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$200(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
