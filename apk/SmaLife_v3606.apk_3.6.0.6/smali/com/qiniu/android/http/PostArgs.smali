.class public final Lcom/qiniu/android/http/PostArgs;
.super Ljava/lang/Object;
.source "PostArgs.java"


# instance fields
.field public data:[B

.field public file:Ljava/io/File;

.field public fileName:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
