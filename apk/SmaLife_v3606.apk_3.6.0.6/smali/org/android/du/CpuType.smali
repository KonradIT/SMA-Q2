.class public final enum Lorg/android/du/CpuType;
.super Ljava/lang/Enum;
.source "CpuType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/du/CpuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/android/du/CpuType;

.field public static final enum armeabi:Lorg/android/du/CpuType;

.field public static final enum mips:Lorg/android/du/CpuType;

.field public static final enum x86:Lorg/android/du/CpuType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lorg/android/du/CpuType;

    const-string v1, "armeabi"

    invoke-direct {v0, v1, v2}, Lorg/android/du/CpuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/du/CpuType;->armeabi:Lorg/android/du/CpuType;

    new-instance v0, Lorg/android/du/CpuType;

    const-string v1, "mips"

    invoke-direct {v0, v1, v3}, Lorg/android/du/CpuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/du/CpuType;->mips:Lorg/android/du/CpuType;

    new-instance v0, Lorg/android/du/CpuType;

    const-string v1, "x86"

    invoke-direct {v0, v1, v4}, Lorg/android/du/CpuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/du/CpuType;->x86:Lorg/android/du/CpuType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/android/du/CpuType;

    sget-object v1, Lorg/android/du/CpuType;->armeabi:Lorg/android/du/CpuType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/android/du/CpuType;->mips:Lorg/android/du/CpuType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/du/CpuType;->x86:Lorg/android/du/CpuType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/android/du/CpuType;->$VALUES:[Lorg/android/du/CpuType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/du/CpuType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/du/CpuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/du/CpuType;

    return-object v0
.end method

.method public static values()[Lorg/android/du/CpuType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/du/CpuType;->$VALUES:[Lorg/android/du/CpuType;

    invoke-virtual {v0}, [Lorg/android/du/CpuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/du/CpuType;

    return-object v0
.end method
