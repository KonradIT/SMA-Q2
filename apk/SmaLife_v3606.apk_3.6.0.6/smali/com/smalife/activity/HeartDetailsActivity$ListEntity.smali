.class Lcom/smalife/activity/HeartDetailsActivity$ListEntity;
.super Ljava/lang/Object;
.source "HeartDetailsActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListEntity"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field final synthetic this$0:Lcom/smalife/activity/HeartDetailsActivity;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/HeartDetailsActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/HeartDetailsActivity;Lcom/smalife/activity/HeartDetailsActivity$ListEntity;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;-><init>(Lcom/smalife/activity/HeartDetailsActivity;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->date:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->value:Ljava/lang/String;

    .line 293
    return-void
.end method
