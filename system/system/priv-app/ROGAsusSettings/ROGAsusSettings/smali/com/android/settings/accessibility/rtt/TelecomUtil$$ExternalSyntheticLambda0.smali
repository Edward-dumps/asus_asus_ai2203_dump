.class public final synthetic Lcom/android/settings/accessibility/rtt/TelecomUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/accessibility/rtt/TelecomUtil$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/rtt/TelecomUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/accessibility/rtt/TelecomUtil$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/rtt/TelecomUtil$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/accessibility/rtt/TelecomUtil$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
