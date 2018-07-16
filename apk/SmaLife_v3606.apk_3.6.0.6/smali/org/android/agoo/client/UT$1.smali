.class final enum Lorg/android/agoo/client/UT$1;
.super Lorg/android/agoo/client/UT;
.source "UT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/client/UT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/android/agoo/client/UT;-><init>(Ljava/lang/String;ILorg/android/agoo/client/UT$1;)V

    return-void
.end method


# virtual methods
.method public final getUTClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    const-string v0, "org.android.agoo.ut.impl.Usertrace"

    return-object v0
.end method
