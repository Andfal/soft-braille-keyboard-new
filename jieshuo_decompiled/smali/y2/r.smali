.class public interface abstract Ly2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/r$a;
    }
.end annotation


# static fields
.field public static final c:Ly2/r;

.field public static final d:Ly2/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/r$a;-><init>(Lt2/d;)V

    sput-object v0, Ly2/r;->d:Ly2/r$a;

    new-instance v0, Ly2/r$a$a;

    invoke-direct {v0}, Ly2/r$a$a;-><init>()V

    sput-object v0, Ly2/r;->c:Ly2/r;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
