.class Lcom/linj/FileOperateUtil$2;
.super Ljava/lang/Object;
.source "FileOperateUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linj/FileOperateUtil;->sortList(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$asc:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/linj/FileOperateUtil$2;->val$asc:Z

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "newFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 128
    iget-boolean v2, p0, Lcom/linj/FileOperateUtil$2;->val$asc:Z

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_3
    iget-boolean v2, p0, Lcom/linj/FileOperateUtil$2;->val$asc:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/linj/FileOperateUtil$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
