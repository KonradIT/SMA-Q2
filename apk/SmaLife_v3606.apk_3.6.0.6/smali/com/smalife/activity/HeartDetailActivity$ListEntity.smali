.class Lcom/smalife/activity/HeartDetailActivity$ListEntity;
.super Ljava/lang/Object;
.source "HeartDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListEntity"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/smalife/activity/HeartDetailActivity;

.field private value:I


# direct methods
.method private constructor <init>(Lcom/smalife/activity/HeartDetailActivity;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->this$0:Lcom/smalife/activity/HeartDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/HeartDetailActivity;Lcom/smalife/activity/HeartDetailActivity$ListEntity;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/smalife/activity/HeartDetailActivity$ListEntity;-><init>(Lcom/smalife/activity/HeartDetailActivity;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->value:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->name:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 628
    iput p1, p0, Lcom/smalife/activity/HeartDetailActivity$ListEntity;->value:I

    .line 629
    return-void
.end method
