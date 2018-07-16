.class public final Lcom/tencent/connect/dataprovider/DataType;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/dataprovider/DataType$1;,
        Lcom/tencent/connect/dataprovider/DataType$TextOnly;,
        Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
    }
.end annotation


# static fields
.field public static final CONTENT_AND_IMAGE_PATH:I = 0x1

.field public static final CONTENT_AND_VIDEO_PATH:I = 0x2

.field public static final CONTENT_ONLY:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method
