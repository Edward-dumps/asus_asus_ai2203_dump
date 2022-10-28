.class Lcom/android/settings/analytics/Tracker$1;
.super Ljava/util/HashMap;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/analytics/Tracker;->sendStates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/analytics/Tracker;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/android/settings/analytics/Tracker;Ljava/util/Map$Entry;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/analytics/Tracker$1;->this$0:Lcom/android/settings/analytics/Tracker;

    iput-object p2, p0, Lcom/android/settings/analytics/Tracker$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "state"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
