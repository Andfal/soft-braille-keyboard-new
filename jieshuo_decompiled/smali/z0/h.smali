.class public Lz0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE StatisticsInfo(id INTEGER PRIMARY KEY AUTOINCREMENT,uuid varchar(256),startInfo varchar(256),endInfo varchar(256))"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "StatisticsInfo"

    invoke-static {v0}, Lq1/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
