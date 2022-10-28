.class Lcom/android/settings/datausage/DataUsageList$5;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    const-string p1, "DataUsageList"

    .line 616
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p2, p2, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 617
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 624
    iget-object p4, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p4}, Lcom/android/settings/datausage/DataUsageList;->access$000(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p4}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageList;->access$200(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {p1, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V

    .line 639
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;)V

    return-void

    .line 626
    :cond_1
    :goto_0
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mCycleAdapter = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p4}, Lcom/android/settings/datausage/DataUsageList;->access$000(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", mCycleData = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$5;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showing cycle "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", start="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", end="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 629
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
