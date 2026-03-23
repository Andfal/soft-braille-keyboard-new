.class public final synthetic Lcom/vivo/speechsdk/common/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
