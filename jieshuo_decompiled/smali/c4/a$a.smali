.class public abstract Lc4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc4/a$a;
    .locals 1

    new-instance v0, Lc4/a$a$a;

    invoke-direct {v0, p0}, Lc4/a$a$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method
