.class public final enum Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;
.super Ljava/lang/Enum;
.source "SmartConfigListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integrity_project/smartconfiglib/SmartConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmtCfgEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

.field public static final enum FTC_ERROR:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

.field public static final enum FTC_SUCCESS:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

.field public static final enum FTC_TIMEOUT:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    const-string v1, "FTC_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_SUCCESS:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    .line 10
    new-instance v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    const-string v1, "FTC_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_ERROR:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    .line 14
    new-instance v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    const-string v1, "FTC_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_TIMEOUT:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    sget-object v1, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_SUCCESS:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_ERROR:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->FTC_TIMEOUT:Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->ENUM$VALUES:[Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    return-object v0
.end method

.method public static values()[Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;->ENUM$VALUES:[Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/integrity_project/smartconfiglib/SmartConfigListener$SmtCfgEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
