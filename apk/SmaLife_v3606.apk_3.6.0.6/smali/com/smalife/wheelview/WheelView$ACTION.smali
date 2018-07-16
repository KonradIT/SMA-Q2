.class public final enum Lcom/smalife/wheelview/WheelView$ACTION;
.super Ljava/lang/Enum;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smalife/wheelview/WheelView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/smalife/wheelview/WheelView$ACTION;

.field public static final enum DAGGLE:Lcom/smalife/wheelview/WheelView$ACTION;

.field private static final synthetic ENUM$VALUES:[Lcom/smalife/wheelview/WheelView$ACTION;

.field public static final enum FLING:Lcom/smalife/wheelview/WheelView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/smalife/wheelview/WheelView$ACTION;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v2}, Lcom/smalife/wheelview/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/smalife/wheelview/WheelView$ACTION;->CLICK:Lcom/smalife/wheelview/WheelView$ACTION;

    .line 35
    new-instance v0, Lcom/smalife/wheelview/WheelView$ACTION;

    const-string v1, "FLING"

    invoke-direct {v0, v1, v3}, Lcom/smalife/wheelview/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smalife/wheelview/WheelView$ACTION;->FLING:Lcom/smalife/wheelview/WheelView$ACTION;

    .line 36
    new-instance v0, Lcom/smalife/wheelview/WheelView$ACTION;

    const-string v1, "DAGGLE"

    invoke-direct {v0, v1, v4}, Lcom/smalife/wheelview/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smalife/wheelview/WheelView$ACTION;->DAGGLE:Lcom/smalife/wheelview/WheelView$ACTION;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smalife/wheelview/WheelView$ACTION;

    sget-object v1, Lcom/smalife/wheelview/WheelView$ACTION;->CLICK:Lcom/smalife/wheelview/WheelView$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smalife/wheelview/WheelView$ACTION;->FLING:Lcom/smalife/wheelview/WheelView$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smalife/wheelview/WheelView$ACTION;->DAGGLE:Lcom/smalife/wheelview/WheelView$ACTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smalife/wheelview/WheelView$ACTION;->ENUM$VALUES:[Lcom/smalife/wheelview/WheelView$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smalife/wheelview/WheelView$ACTION;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/smalife/wheelview/WheelView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smalife/wheelview/WheelView$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/smalife/wheelview/WheelView$ACTION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/smalife/wheelview/WheelView$ACTION;->ENUM$VALUES:[Lcom/smalife/wheelview/WheelView$ACTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/smalife/wheelview/WheelView$ACTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
