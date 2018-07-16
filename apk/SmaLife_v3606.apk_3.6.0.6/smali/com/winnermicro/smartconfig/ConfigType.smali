.class public final enum Lcom/winnermicro/smartconfig/ConfigType;
.super Ljava/lang/Enum;
.source "ConfigType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/winnermicro/smartconfig/ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/winnermicro/smartconfig/ConfigType;

.field public static final enum UDP:Lcom/winnermicro/smartconfig/ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/winnermicro/smartconfig/ConfigType;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v2}, Lcom/winnermicro/smartconfig/ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winnermicro/smartconfig/ConfigType;->UDP:Lcom/winnermicro/smartconfig/ConfigType;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/winnermicro/smartconfig/ConfigType;

    sget-object v1, Lcom/winnermicro/smartconfig/ConfigType;->UDP:Lcom/winnermicro/smartconfig/ConfigType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/winnermicro/smartconfig/ConfigType;->ENUM$VALUES:[Lcom/winnermicro/smartconfig/ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winnermicro/smartconfig/ConfigType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/winnermicro/smartconfig/ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winnermicro/smartconfig/ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/winnermicro/smartconfig/ConfigType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/winnermicro/smartconfig/ConfigType;->ENUM$VALUES:[Lcom/winnermicro/smartconfig/ConfigType;

    array-length v1, v0

    new-array v2, v1, [Lcom/winnermicro/smartconfig/ConfigType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
