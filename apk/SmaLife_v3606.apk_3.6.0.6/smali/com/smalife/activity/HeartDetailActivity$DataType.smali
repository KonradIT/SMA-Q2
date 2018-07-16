.class public final enum Lcom/smalife/activity/HeartDetailActivity$DataType;
.super Ljava/lang/Enum;
.source "HeartDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/HeartDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smalife/activity/HeartDetailActivity$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

.field private static final synthetic ENUM$VALUES:[Lcom/smalife/activity/HeartDetailActivity$DataType;

.field public static final enum MONTH:Lcom/smalife/activity/HeartDetailActivity$DataType;

.field public static final enum WEEK:Lcom/smalife/activity/HeartDetailActivity$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 608
    new-instance v0, Lcom/smalife/activity/HeartDetailActivity$DataType;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v2}, Lcom/smalife/activity/HeartDetailActivity$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    new-instance v0, Lcom/smalife/activity/HeartDetailActivity$DataType;

    const-string v1, "WEEK"

    invoke-direct {v0, v1, v3}, Lcom/smalife/activity/HeartDetailActivity$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smalife/activity/HeartDetailActivity$DataType;->WEEK:Lcom/smalife/activity/HeartDetailActivity$DataType;

    new-instance v0, Lcom/smalife/activity/HeartDetailActivity$DataType;

    const-string v1, "MONTH"

    invoke-direct {v0, v1, v4}, Lcom/smalife/activity/HeartDetailActivity$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smalife/activity/HeartDetailActivity$DataType;->MONTH:Lcom/smalife/activity/HeartDetailActivity$DataType;

    .line 607
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smalife/activity/HeartDetailActivity$DataType;

    sget-object v1, Lcom/smalife/activity/HeartDetailActivity$DataType;->DAY:Lcom/smalife/activity/HeartDetailActivity$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smalife/activity/HeartDetailActivity$DataType;->WEEK:Lcom/smalife/activity/HeartDetailActivity$DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smalife/activity/HeartDetailActivity$DataType;->MONTH:Lcom/smalife/activity/HeartDetailActivity$DataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smalife/activity/HeartDetailActivity$DataType;->ENUM$VALUES:[Lcom/smalife/activity/HeartDetailActivity$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smalife/activity/HeartDetailActivity$DataType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smalife/activity/HeartDetailActivity$DataType;

    return-object v0
.end method

.method public static values()[Lcom/smalife/activity/HeartDetailActivity$DataType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/smalife/activity/HeartDetailActivity$DataType;->ENUM$VALUES:[Lcom/smalife/activity/HeartDetailActivity$DataType;

    array-length v1, v0

    new-array v2, v1, [Lcom/smalife/activity/HeartDetailActivity$DataType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
