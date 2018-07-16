.class Lcom/smalife/activity/SportDetailActivity$2;
.super Ljava/lang/Object;
.source "SportDetailActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smalife/db/entity/SportEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportDetailActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportDetailActivity$2;->this$0:Lcom/smalife/activity/SportDetailActivity;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/smalife/db/entity/SportEntity;Lcom/smalife/db/entity/SportEntity;)I
    .locals 2
    .param p1, "pre"    # Lcom/smalife/db/entity/SportEntity;
    .param p2, "next"    # Lcom/smalife/db/entity/SportEntity;

    .prologue
    .line 418
    invoke-virtual {p2}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v0

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    .line 420
    :cond_0
    invoke-virtual {p2}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v0

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 421
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/smalife/db/entity/SportEntity;

    check-cast p2, Lcom/smalife/db/entity/SportEntity;

    invoke-virtual {p0, p1, p2}, Lcom/smalife/activity/SportDetailActivity$2;->compare(Lcom/smalife/db/entity/SportEntity;Lcom/smalife/db/entity/SportEntity;)I

    move-result v0

    return v0
.end method
