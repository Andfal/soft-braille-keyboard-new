.class public Lz0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/a$a;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "fsFileInfo"

    invoke-static {}, Lz0/a$a;->values()[Lz0/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lq1/j;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "fsFileInfo"

    invoke-static {v0}, Lq1/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
