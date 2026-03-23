.class public final synthetic Lg/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/time/chrono/ChronoZonedDateTime;)J
    .locals 2

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0
.end method
