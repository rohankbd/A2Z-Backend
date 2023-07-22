--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: A2Zbackend_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_accounts" (
    account_id integer NOT NULL,
    name character varying(100) NOT NULL,
    create_date date NOT NULL,
    address character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    phone character varying(100) NOT NULL,
    account_type character varying(100) NOT NULL
);


ALTER TABLE public."A2Zbackend_accounts" OWNER TO postgres;

--
-- Name: A2Zbackend_accounts_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_accounts_account_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_accounts_account_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_accounts_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_accounts_account_id_seq" OWNED BY public."A2Zbackend_accounts".account_id;


--
-- Name: A2Zbackend_accounttypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_accounttypes" (
    account_type_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public."A2Zbackend_accounttypes" OWNER TO postgres;

--
-- Name: A2Zbackend_cases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_cases" (
    case_id integer NOT NULL,
    csr_id_id integer NOT NULL,
    dispatch_entry_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_cases" OWNER TO postgres;

--
-- Name: A2Zbackend_cases_case_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_cases_case_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_cases_case_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_cases_case_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_cases_case_id_seq" OWNED BY public."A2Zbackend_cases".case_id;


--
-- Name: A2Zbackend_company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_company" (
    id bigint NOT NULL,
    company_id integer NOT NULL,
    name character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    pincode character varying(100) NOT NULL,
    country character varying(100) NOT NULL,
    create_date date NOT NULL,
    company_type character varying(100) NOT NULL,
    status character varying(100) NOT NULL,
    auth_token character varying(100) NOT NULL,
    is_deleted boolean NOT NULL,
    monthly_fee double precision NOT NULL,
    notes text NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);


ALTER TABLE public."A2Zbackend_company" OWNER TO postgres;

--
-- Name: A2Zbackend_company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_company_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_company_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_company_id_seq" OWNED BY public."A2Zbackend_company".id;


--
-- Name: A2Zbackend_companyfeatures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_companyfeatures" (
    id bigint NOT NULL,
    company_features_id integer NOT NULL,
    name character varying(100) NOT NULL,
    create_date date NOT NULL,
    company_id_id bigint NOT NULL,
    feature_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_companyfeatures" OWNER TO postgres;

--
-- Name: A2Zbackend_companyfeatures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_companyfeatures_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_companyfeatures_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_companyfeatures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_companyfeatures_id_seq" OWNED BY public."A2Zbackend_companyfeatures".id;


--
-- Name: A2Zbackend_companypricing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_companypricing" (
    id integer NOT NULL,
    default_rate double precision NOT NULL,
    company_id_id bigint NOT NULL,
    rate_item_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_companypricing" OWNER TO postgres;

--
-- Name: A2Zbackend_companypricing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_companypricing_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_companypricing_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_companypricing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_companypricing_id_seq" OWNED BY public."A2Zbackend_companypricing".id;


--
-- Name: A2Zbackend_customerfeedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_customerfeedback" (
    id integer NOT NULL,
    review text NOT NULL,
    rating integer NOT NULL,
    name character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    notes text NOT NULL,
    customer_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_customerfeedback" OWNER TO postgres;

--
-- Name: A2Zbackend_customerfeedback_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_customerfeedback_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_customerfeedback_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_customerfeedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_customerfeedback_id_seq" OWNED BY public."A2Zbackend_customerfeedback".id;


--
-- Name: A2Zbackend_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_customers" (
    customer_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    phone character varying(100) NOT NULL,
    whatsapp_number character varying(100) NOT NULL
);


ALTER TABLE public."A2Zbackend_customers" OWNER TO postgres;

--
-- Name: A2Zbackend_customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_customers_customer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_customers_customer_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_customers_customer_id_seq" OWNED BY public."A2Zbackend_customers".customer_id;


--
-- Name: A2Zbackend_dispatchentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_dispatchentry" (
    dispatch_entry_id integer NOT NULL,
    create_date date NOT NULL,
    partner_caseid integer NOT NULL,
    partner_service_id integer NOT NULL,
    source character varying(100) NOT NULL,
    repair_status character varying(100) NOT NULL,
    scheduled_date date NOT NULL,
    is_scheduled boolean NOT NULL,
    pickup_location character varying(100) NOT NULL,
    dropoff_location character varying(100) NOT NULL,
    eta timestamp with time zone NOT NULL,
    ata timestamp with time zone NOT NULL,
    account_id_id integer NOT NULL,
    asset_id_id integer NOT NULL,
    case_id integer NOT NULL,
    company_id_id bigint NOT NULL,
    csr_id_id integer NOT NULL,
    customer_id_id integer NOT NULL,
    dispatch_status_id_id integer NOT NULL,
    invoice_id_id integer NOT NULL,
    payment_id_id integer NOT NULL,
    payment_status_id integer NOT NULL,
    reason_id_id integer NOT NULL,
    service_type_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_dispatchentry" OWNER TO postgres;

--
-- Name: A2Zbackend_dispatchentry_dispatch_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_dispatchentry_dispatch_entry_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_dispatchentry_dispatch_entry_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_dispatchentry_dispatch_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_dispatchentry_dispatch_entry_id_seq" OWNED BY public."A2Zbackend_dispatchentry".dispatch_entry_id;


--
-- Name: A2Zbackend_dispatchentryassets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_dispatchentryassets" (
    asset_id integer NOT NULL,
    colorid character varying(100) NOT NULL,
    body_type_id integer NOT NULL,
    make character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    model_year integer NOT NULL,
    license_plate character varying(100) NOT NULL,
    license_state character varying(100) NOT NULL,
    license_year integer NOT NULL,
    create_date date NOT NULL,
    customer_id_id integer NOT NULL,
    dispatch_entry_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_dispatchentryassets" OWNER TO postgres;

--
-- Name: A2Zbackend_dispatchentryassets_asset_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_dispatchentryassets_asset_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_dispatchentryassets_asset_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_dispatchentryassets_asset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_dispatchentryassets_asset_id_seq" OWNED BY public."A2Zbackend_dispatchentryassets".asset_id;


--
-- Name: A2Zbackend_dispatchstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_dispatchstatus" (
    dispatch_status_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public."A2Zbackend_dispatchstatus" OWNER TO postgres;

--
-- Name: A2Zbackend_dispatchstatus_dispatch_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_dispatchstatus_dispatch_status_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_dispatchstatus_dispatch_status_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_dispatchstatus_dispatch_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_dispatchstatus_dispatch_status_id_seq" OWNED BY public."A2Zbackend_dispatchstatus".dispatch_status_id;


--
-- Name: A2Zbackend_driverlocation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_driverlocation" (
    "driverLocation_id" integer NOT NULL,
    create_date date NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    company_id_id bigint NOT NULL
);


ALTER TABLE public."A2Zbackend_driverlocation" OWNER TO postgres;

--
-- Name: A2Zbackend_driverlocation_driverLocation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_driverlocation_driverLocation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_driverlocation_driverLocation_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_driverlocation_driverLocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_driverlocation_driverLocation_id_seq" OWNED BY public."A2Zbackend_driverlocation"."driverLocation_id";


--
-- Name: A2Zbackend_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_features" (
    feature_id integer NOT NULL,
    name character varying(100) NOT NULL,
    create_date date NOT NULL
);


ALTER TABLE public."A2Zbackend_features" OWNER TO postgres;

--
-- Name: A2Zbackend_features_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_features_feature_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_features_feature_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_features_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_features_feature_id_seq" OWNED BY public."A2Zbackend_features".feature_id;


--
-- Name: A2Zbackend_invoices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_invoices" (
    invoice_id integer NOT NULL,
    create_date date NOT NULL,
    reference_number character varying(100) NOT NULL,
    ponumber character varying(100) NOT NULL,
    txn_number character varying(100) NOT NULL,
    customer integer NOT NULL,
    customer_name character varying(100) NOT NULL,
    subtotal double precision NOT NULL,
    tax double precision NOT NULL,
    total_amount double precision NOT NULL,
    billing_email character varying(254) NOT NULL,
    dispatch_amount double precision NOT NULL,
    dispatch_rate double precision NOT NULL
);


ALTER TABLE public."A2Zbackend_invoices" OWNER TO postgres;

--
-- Name: A2Zbackend_invoices_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_invoices_invoice_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_invoices_invoice_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_invoices_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_invoices_invoice_id_seq" OWNED BY public."A2Zbackend_invoices".invoice_id;


--
-- Name: A2Zbackend_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_payments" (
    payment_id integer NOT NULL,
    notes text NOT NULL,
    txn_number character varying(100) NOT NULL,
    payment_type character varying(100) NOT NULL,
    amount double precision NOT NULL,
    create_date date NOT NULL,
    status character varying(100) NOT NULL,
    invoice_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_payments" OWNER TO postgres;

--
-- Name: A2Zbackend_payments_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_payments_payment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_payments_payment_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_payments_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_payments_payment_id_seq" OWNED BY public."A2Zbackend_payments".payment_id;


--
-- Name: A2Zbackend_rateitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_rateitem" (
    rate_item_id integer NOT NULL,
    name character varying(100) NOT NULL,
    account_name character varying(100) NOT NULL,
    account_company_id integer NOT NULL,
    account_id_id integer NOT NULL,
    vehicle_id_id integer NOT NULL,
    budget_2w integer NOT NULL,
    budget_4w integer NOT NULL,
    default_rate_2w integer NOT NULL,
    default_rate_4w integer NOT NULL,
    luxury_2w integer NOT NULL,
    luxury_4w integer NOT NULL,
    premium_2w integer NOT NULL,
    premium_4w integer NOT NULL,
    suv_4w integer NOT NULL
);


ALTER TABLE public."A2Zbackend_rateitem" OWNER TO postgres;

--
-- Name: A2Zbackend_rateitem_rate_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_rateitem_rate_item_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_rateitem_rate_item_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_rateitem_rate_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_rateitem_rate_item_id_seq" OWNED BY public."A2Zbackend_rateitem".rate_item_id;


--
-- Name: A2Zbackend_reasons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_reasons" (
    reason_id integer NOT NULL,
    name character varying(100) NOT NULL,
    create_date date NOT NULL,
    service_type character varying(100) NOT NULL
);


ALTER TABLE public."A2Zbackend_reasons" OWNER TO postgres;

--
-- Name: A2Zbackend_reasons_reason_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_reasons_reason_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_reasons_reason_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_reasons_reason_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_reasons_reason_id_seq" OWNED BY public."A2Zbackend_reasons".reason_id;


--
-- Name: A2Zbackend_servicetypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_servicetypes" (
    service_type_id integer NOT NULL,
    service character varying(100) NOT NULL,
    service_type character varying(10) NOT NULL
);


ALTER TABLE public."A2Zbackend_servicetypes" OWNER TO postgres;

--
-- Name: A2Zbackend_servicetypes_service_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_servicetypes_service_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_servicetypes_service_type_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_servicetypes_service_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_servicetypes_service_type_id_seq" OWNED BY public."A2Zbackend_servicetypes".service_type_id;


--
-- Name: A2Zbackend_systemuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_systemuser" (
    csr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    create_date date NOT NULL,
    role character varying(50) NOT NULL,
    role_id integer NOT NULL,
    status character varying(100) NOT NULL
);


ALTER TABLE public."A2Zbackend_systemuser" OWNER TO postgres;

--
-- Name: A2Zbackend_systemuser_csr_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_systemuser_csr_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_systemuser_csr_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_systemuser_csr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_systemuser_csr_id_seq" OWNED BY public."A2Zbackend_systemuser".csr_id;


--
-- Name: A2Zbackend_systemuserstatusrecords; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_systemuserstatusrecords" (
    id integer NOT NULL,
    previous_csr_id integer NOT NULL,
    new_csr_id integer NOT NULL,
    create_date date NOT NULL,
    dispatch_entry_id_id integer NOT NULL
);


ALTER TABLE public."A2Zbackend_systemuserstatusrecords" OWNER TO postgres;

--
-- Name: A2Zbackend_systemuserstatusrecords_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_systemuserstatusrecords_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_systemuserstatusrecords_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_systemuserstatusrecords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_systemuserstatusrecords_id_seq" OWNED BY public."A2Zbackend_systemuserstatusrecords".id;


--
-- Name: A2Zbackend_vehicles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."A2Zbackend_vehicles" (
    vehicle_id integer NOT NULL,
    make character varying(100) NOT NULL,
    vehicle_class character varying(100) NOT NULL,
    vehicle_type integer NOT NULL
);


ALTER TABLE public."A2Zbackend_vehicles" OWNER TO postgres;

--
-- Name: A2Zbackend_vehicles_vehicle_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."A2Zbackend_vehicles_vehicle_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."A2Zbackend_vehicles_vehicle_id_seq" OWNER TO postgres;

--
-- Name: A2Zbackend_vehicles_vehicle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."A2Zbackend_vehicles_vehicle_id_seq" OWNED BY public."A2Zbackend_vehicles".vehicle_id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: A2Zbackend_accounts account_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_accounts" ALTER COLUMN account_id SET DEFAULT nextval('public."A2Zbackend_accounts_account_id_seq"'::regclass);


--
-- Name: A2Zbackend_cases case_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_cases" ALTER COLUMN case_id SET DEFAULT nextval('public."A2Zbackend_cases_case_id_seq"'::regclass);


--
-- Name: A2Zbackend_company id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_company" ALTER COLUMN id SET DEFAULT nextval('public."A2Zbackend_company_id_seq"'::regclass);


--
-- Name: A2Zbackend_companyfeatures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companyfeatures" ALTER COLUMN id SET DEFAULT nextval('public."A2Zbackend_companyfeatures_id_seq"'::regclass);


--
-- Name: A2Zbackend_companypricing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companypricing" ALTER COLUMN id SET DEFAULT nextval('public."A2Zbackend_companypricing_id_seq"'::regclass);


--
-- Name: A2Zbackend_customerfeedback id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_customerfeedback" ALTER COLUMN id SET DEFAULT nextval('public."A2Zbackend_customerfeedback_id_seq"'::regclass);


--
-- Name: A2Zbackend_customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_customers" ALTER COLUMN customer_id SET DEFAULT nextval('public."A2Zbackend_customers_customer_id_seq"'::regclass);


--
-- Name: A2Zbackend_dispatchentry dispatch_entry_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry" ALTER COLUMN dispatch_entry_id SET DEFAULT nextval('public."A2Zbackend_dispatchentry_dispatch_entry_id_seq"'::regclass);


--
-- Name: A2Zbackend_dispatchentryassets asset_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentryassets" ALTER COLUMN asset_id SET DEFAULT nextval('public."A2Zbackend_dispatchentryassets_asset_id_seq"'::regclass);


--
-- Name: A2Zbackend_dispatchstatus dispatch_status_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchstatus" ALTER COLUMN dispatch_status_id SET DEFAULT nextval('public."A2Zbackend_dispatchstatus_dispatch_status_id_seq"'::regclass);


--
-- Name: A2Zbackend_driverlocation driverLocation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_driverlocation" ALTER COLUMN "driverLocation_id" SET DEFAULT nextval('public."A2Zbackend_driverlocation_driverLocation_id_seq"'::regclass);


--
-- Name: A2Zbackend_features feature_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_features" ALTER COLUMN feature_id SET DEFAULT nextval('public."A2Zbackend_features_feature_id_seq"'::regclass);


--
-- Name: A2Zbackend_invoices invoice_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_invoices" ALTER COLUMN invoice_id SET DEFAULT nextval('public."A2Zbackend_invoices_invoice_id_seq"'::regclass);


--
-- Name: A2Zbackend_payments payment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_payments" ALTER COLUMN payment_id SET DEFAULT nextval('public."A2Zbackend_payments_payment_id_seq"'::regclass);


--
-- Name: A2Zbackend_rateitem rate_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_rateitem" ALTER COLUMN rate_item_id SET DEFAULT nextval('public."A2Zbackend_rateitem_rate_item_id_seq"'::regclass);


--
-- Name: A2Zbackend_reasons reason_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_reasons" ALTER COLUMN reason_id SET DEFAULT nextval('public."A2Zbackend_reasons_reason_id_seq"'::regclass);


--
-- Name: A2Zbackend_servicetypes service_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_servicetypes" ALTER COLUMN service_type_id SET DEFAULT nextval('public."A2Zbackend_servicetypes_service_type_id_seq"'::regclass);


--
-- Name: A2Zbackend_systemuser csr_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_systemuser" ALTER COLUMN csr_id SET DEFAULT nextval('public."A2Zbackend_systemuser_csr_id_seq"'::regclass);


--
-- Name: A2Zbackend_systemuserstatusrecords id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_systemuserstatusrecords" ALTER COLUMN id SET DEFAULT nextval('public."A2Zbackend_systemuserstatusrecords_id_seq"'::regclass);


--
-- Name: A2Zbackend_vehicles vehicle_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_vehicles" ALTER COLUMN vehicle_id SET DEFAULT nextval('public."A2Zbackend_vehicles_vehicle_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: A2Zbackend_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_accounts" (account_id, name, create_date, address, email, phone, account_type) FROM stdin;
1	A2Z ASSIST	2023-07-13	Bangalore	A2Zassist@outlook.com	8333919515	Broker
2	ALLIANZ	2023-07-13	Bangalore	ALLIANZ@outlook.com	8333919515	Broker
3	ACROSS ASSIST	2023-07-13	Bangalore	ACROSSASSIST@outlook.com	8333919515	Broker
4	EUROP	2023-07-13	Bangalore	EUROP@outlook.com	8333919515	Broker
5	GLOBAL ASSURE	2023-07-13	Bangalore	GLOBALASSURE@outlook.com	8333919515	Broker
6	ON DEMAND	2023-07-13	Bangalore	ONDEMAND@outlook.com	8333919515	Broker
7	ONTRACK	2023-07-13	Bangalore	ONTRACK@outlook.com	8333919515	Broker
8	READYASSIST	2023-07-13	Bangalore	READYASSIST@outlook.com	8333919515	Broker
9	ROADZEN	2023-07-13	Bangalore	ROADZEN@outlook.com	8333919515	Broker
10	TLC	2023-07-13	Bangalore	TLC@outlook.com	8333919515	Broker
11	KI MOBILITY	2023-07-13	Bangalore	KIMOBILITY@outlook.com	8333919515	Broker
12	MADHU LEAD	2023-07-13	Bangalore	MADHULEAD@outlook.com	8333919515	Broker
13	RODA	2023-07-13	Bangalore	RODA@outlook.com	8333919515	Broker
14	BOOKMYCARSERVICE	2023-07-13	Bangalore	BOOKMYCARSERVICE@outlook.com	8333919515	Broker
\.


--
-- Data for Name: A2Zbackend_accounttypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_accounttypes" (account_type_id, name) FROM stdin;
0	BodyShop
1	Broker
2	Dealership
3	Fleet
4	HeavyEquipment
5	Individual
6	InsuranceCompany
7	MotorClub
8	Municipality
9	Other
10	PoliceDepartment
11	PrivateProperty
12	ReposessionAgency
13	ServiceShop
14	StorageFacility
15	Transport
\.


--
-- Data for Name: A2Zbackend_cases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_cases" (case_id, csr_id_id, dispatch_entry_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_company" (id, company_id, name, phone, email, address, city, state, pincode, country, create_date, company_type, status, auth_token, is_deleted, monthly_fee, notes, latitude, longitude) FROM stdin;
1	1001	A2Z ASSIST	8333919515	vvsrikar91@gmail.com	10th floor, RMZ Latitude Commercial Building, Bellary Rd, Amruthnagar, Hebbal, Bengaluru, Karnataka 560024	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	A2Z assist	13.0500131	77.575169
2	1002	Bharath Towing Services	9945400667	vvsrikar91@gmail.com	272, Buvaneshwari Nagar Main Rd, Seethappa Layout, Chamundi Nagar, Hebbal, Bengaluru, Karnataka 560032	Bangalore	Karnataka	560024	India	2023-07-13	0	1	abc	f	100	xyz	13.032497	77.6023759
3	1003	Gunal Towing Service	9986006070	vvsrikar91@gmail.com	No.69, Shop No.10, P & T Complex Cholanagar, Post Bangalore, RT Nagar, Bengaluru, Karnataka 560032	Bangalore	Karnataka	560024	India	2023-07-13	2	1	abc	f	100	xyz	13.034453	77.593122
4	1004	Towing Cars	9945567776	vvsrikar91@gmail.com	Basaveshwar Store, Ramanna Building, B. Narayana Pura Dooravani Nagar, Whitefield, Bengaluru, Karnataka 560016	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9925237	77.6808128
5	1005	SVS Towing service	9901695230	vvsrikar91@gmail.com	#16/1 1st main 1st cross narayanappa building vidhanasoudha, Bengaluru, Karnataka 560058	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0141352	77.5226506
6	1006	Maruthi Towing service	9535508055	vvsrikar91@gmail.com	Bandepalya, Garvebhavi Palya, Bengaluru, Karnataka 560068	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9000702	77.633432
7	1007	Bengaluru Car Towing Service	8885147888	vvsrikar91@gmail.com	No.202, Venkatadrinilaya, Munnekolala Lake Trail, Marathahalli, Bengaluru, Karnataka 560048	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.956924	77.701127
8	1008	madhu towing services	9964355566	vvsrikar91@gmail.com	74/1 3rd cross lakshmi narayana layout munnekollal, Marathahalli, Bengaluru, Karnataka 560037	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9538391	77.704318
9	1009	Toweazy	9964355566	vvsrikar91@gmail.com	6th Main Rd, Lakshmi Sagar Layout, Garudachar Palya, Mahadevapura, Bengaluru, Karnataka 560048	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.993182	77.69502
10	1010	J K Towing Services	9845117490	vvsrikar91@gmail.com	16, 15th Cross Rd, Gopalappa Layout, Lakkasandra, Lakkasandra Extension, Wilson Garden, Bengaluru, Karnataka 560030	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9428634	77.599868
11	1011	N.J. Towing Service	9945409876	vvsrikar91@gmail.com	No.324/16, Durwesh Manzil,Queens Road, Cross, Shivaji Nagar, Bengaluru, Karnataka 560052	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9845957	77.5972831
12	1012	Bhargav Towing Service	8971888689	vvsrikar91@gmail.com	No.90, 7th Main Rd, Whitefield, B Narayanapura, Mahadevapura, Bengaluru, Karnataka 560016	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9950592	77.6865732
13	1013	RJP Towing Services	9964355566	vvsrikar91@gmail.com	#57, 3rd Cross Rd, APMC Yard, Yesvantpur Industrial Suburb, Yeswanthpur, Bengaluru, Karnataka 560022	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0172699	77.5431645
14	1014	Towing Service & Clutch Breakdown	8398970970	vvsrikar91@gmail.com	7th main, Byrasandra, Kaggadasapura, Bengaluru, Karnataka 560016	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9838096	77.666664
15	1015	Spoorthi Towing services	8660253175	vvsrikar91@gmail.com	31, Veerabramhendra Mata 2nd Main Rd, Laggere, Annapoorneshwari Nagar, Hegganahalli, Bengaluru, Karnataka 560091	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0000719	77.5172996
16	1016	Speed Lines Towing Service	7353711777	vvsrikar91@gmail.com	31, 32/18, 6th Main Rd, BHEL Layout, Jai Maruthi Nagar, Nandini Layout, Bengaluru, Karnataka 560096	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.010165	77.533077
17	1017	Towingwala. Business. site	9606156697	vvsrikar91@gmail.com	7th Main Rd, Kamadhenu Nagar, B Narayanapura, Mahadevapura, Bengaluru, Karnataka 560016	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.997565	77.685317
18	1018	VK Towing Services	9980866707	vvsrikar91@gmail.com	No. 90, 9th Cross Rd, Vinayaka Nagar, MICO, Adugodi, Bengaluru, Karnataka 560030	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9484107	77.5955683
19	1019	Raghu towing services	9945446037	vvsrikar91@gmail.com	Sector 3, HSR Layout, Bengaluru, Karnataka 560068	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9121181	77.6445548
20	1020	Sri Vinayaka Car Towing	9686111199	vvsrikar91@gmail.com	129, 3 Cross , Outer Ring Road,, Kariyammana Agrahara, Near pratham Moters, Bellandur, Karnataka 560103	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9278247	77.6796778
21	1021	Sri Jai Bhuvaneshwari Car Towing services	8884544881	vvsrikar91@gmail.com	148 16th Cross, 2nd Main, opp. Dynamatic, Chokkasandra, T. Dasarahalli, Bengaluru, Karnataka 560057	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0462109	77.512965
22	1022	RESCUE Roadside Assistance	9986500500	vvsrikar91@gmail.com	105, Raheja Plaza, Richmond Rd, Ashok Nagar, Bengaluru, Karnataka 560025	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9676733	77.6112868
23	1023	Car towing Wala Service	8088775688	vvsrikar91@gmail.com	1st floor, 279, 5th Main Rd, near Ganesha Temple, AECS B Block, Wellington Paradise, Singasandra, Bengaluru, Karnataka 560114	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.8812915	77.6403707
24	1024	Towing on Wheels.Com	8123423648	vvsrikar91@gmail.com	XMVJ+284, Anugraha Layout, Anjappa Layout, B Narayanapura, Mahadevapura, Bengaluru, Karnataka 560016	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9925237	77.6808128
25	1025	S.V.N Towing Service	8618011495	vvsrikar91@gmail.com	206, 2nd Cross Rd, Chowdeshwari Nagar, Muniswara Nagar, Laggere, Bengaluru, Karnataka 560058	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9983294	77.5235521
26	1026	Quick and safe Towing	9844211967	vvsrikar91@gmail.com	#44, 3rd Cross Street, Govindaraja Nagar Ward, Amarajyothi Nagar, Vijayanagar, Bengaluru, Karnataka 560072	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9760741	77.5239131
27	1027	Shivaraj Towing Service	8496801218	vvsrikar91@gmail.com	No.58, 16th cross, 2nd main, Doddapatelappa Building, opp. Dynamatic, Chokkasandra, T. Dasarahalli, Bengaluru, Karnataka 560057	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0406486	77.5155149
28	1028	Vigneshwara Car Tow Service	9535935989	vvsrikar91@gmail.com	Begur Rd, Classic Paradise Layout, Devarachikkana Halli, Bengaluru, Karnataka 560068	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.878809	77.6245478
29	1029	S R Towing Service	9900875529	vvsrikar91@gmail.com	383, 2nd cross, suggappa layout, near register office laggere, peenya small industries post, north, Bengaluru, Karnataka 560009	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0170802	77.5123915
30	1030	LV Towing Service	9900875529	vvsrikar91@gmail.com	42 SFHS, Post, Nandini Layout, Bengaluru, Karnataka 560096	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.015811	77.5390237
31	1031	GaadiAssist 24/7Breakdown & Bike and Car Repairs	7338000333	vvsrikar91@gmail.com	31/2, ground floor, 3rd Main Rd, Jakkasandra, 1st Block Koramangala, HSR Layout 5th Sector, Bengaluru, Karnataka 560034	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9238639	77.6357701
32	1032	GoMechanic	8398970970	vvsrikar91@gmail.com	Popular Colony, Mangammanapalya, Bengaluru, Karnataka 560068	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9015486	77.6387477
33	1033	ReadyAssist	8197852852	vvsrikar91@gmail.com	839/2, 24th Main Rd, behind Thirumala Theatre, 1st Sector, HSR Layout, Bengaluru, Karnataka 560102	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9203483	77.6501873
34	1034	Car towing services	9620440007	vvsrikar91@gmail.com	Tatanagar, Hebbal, Bengaluru, Karnataka 560092	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0560286	77.5739635
35	1035	Car Breakdown Service	6363461441	vvsrikar91@gmail.com	Ground Floor, No 11, Bhovi Hatti, Kadubeesanahalli Upas, Kadubeesanahalli, Panathur, Bengaluru, Karnataka 560103	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9396395	77.6958225
36	1036	SMS Roadside Assistance 24/7 Car	9901808939	vvsrikar91@gmail.com	128, 13th Main, 3rd Cross Rd, HAL 3rd Stage, Kodihalli, Indiranagar, Bengaluru, Karnataka 560008	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9675769	77.6496765
37	1037	RAPID - Roadside Assistance 24/7	8152061590	vvsrikar91@gmail.com	Subramani Nagar, Hebbal, Bengaluru, Karnataka 560024	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.04177591	77.5937925
38	1038	Zoom motors	9886198517	vvsrikar91@gmail.com	16, Cholanayakana Halli Main Road, Hebbal, Bengaluru 560032, Karnataka	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.03488636	77.6042404
39	1039	Sri Manjunatha Battery Works EXIDE, AMARON	99007 07990	vvsrikar91@gmail.com	main road, opposite to SBI BANK, Ashwath Nagar, Sanjayanagara, Bengaluru, Karnataka 560094	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.02050169	77.5456591
40	1040	S M Battery Point	98451 22242	vvsrikar91@gmail.com	11, MS Ramaiah Rd, next to Karnataka Bank, Gokula 1st Stage, Mathikere Extension, Mathikere, Bengaluru, Karnataka 560054	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0323293	77.4890218
41	1041	Manjusree Battery	94485 50399	vvsrikar91@gmail.com	Bus Stop, 71, Sanjay Nagar Main Rd, near Ashwanth nagar, RMV 2nd Stage, Ashwath Nagar, Sanjayanagara, Bengaluru, Karnataka 560094	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0266823	77.5100278
42	1042	Arohi battery house - Battery jump start and car jump start and Road side assistance	76769 24329	vvsrikar91@gmail.com	2nd, 26, 13th cross, main, LCR School Rd, BK Nagar, Yeswanthpur, Bengaluru, Karnataka 560022	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0277362	77.4843951
43	1043	Jai hanuman battery service	9964355566	vvsrikar91@gmail.com	33/34 3rd cross, Jayanti Nagar Main Rd, Horamavu, Bengaluru, Karnataka 560113	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0259599	77.596931
44	1044	AMARON BATTERIES AND EXIDE pit shop wholesale prices	95355 04275	vvsrikar91@gmail.com	Swathi hotel back side, 6th Cross, F Block, Sahakar Nagar, Byatarayanapura, Bengaluru, Karnataka 560092	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0636524	77.5183192
45	1045	SM Battery Point	97433 43930	vvsrikar91@gmail.com	164,BCD Block, Kodigehalli Main Rd, Defence Layout, Sahakar Nagar, Post, Bengaluru, Karnataka 560092	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0588157	77.5123122
46	1046	Exide Care - Shivam Technologies	91674 93290	vvsrikar91@gmail.com	Munivenkatappa Complex, No 5 & 6, 36/1, Bellary Rd, Ganganagar, Bengaluru, Karnataka 560032	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0229353	77.5146116
47	1047	EXIDE BATTERY SERVICE CENTER	8291102720	vvsrikar91@gmail.com	\tNo 465, 17th Cross, Tank Bund Rd Malleswaram West Bengaluru, Karnataka - 560055 India	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0081073	77.4854791
48	1048	Battery Palace	080 2344 5757	vvsrikar91@gmail.com	120, Guttahalli Main Rd, 1st R Block, DN Ramaiah Layout, Palace Guttahalli, Bengaluru, Karnataka 560020	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9978817	77.5114547
49	1049	Annamalai Batteries	77953 96539	vvsrikar91@gmail.com	193, Narayan Pillai St, Bharati Nagar, Shivaji Nagar, Bengaluru, Karnataka 560001	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9890464	77.5398721
50	1050	Sri Hanuman Battery Sales & Service	91132 05100	vvsrikar91@gmail.com	Horamavu Main Road, Agara Circle, opp. Shani Mahatma Temple, Bengaluru, Karnataka 560043	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0367145	77.584883
51	1051	Tharun batteries	077608 54655	vvsrikar91@gmail.com	213/A, 10th Main, 56th Cross Rd, opposite Ram Mandir Ground, 4th Block, Rajajinagar, Bengaluru, Karnataka 560010	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9857367	77.4863992
52	1052	Elektrixserve	99458 95333	vvsrikar91@gmail.com	708/4, CHS-707, 1ST Main Road, 4th phase, 1st Main Rd, WAP Staff Quarters, Yelahanka New Town, Bengaluru, Karnataka 560106	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.1034933	77.5070054
53	1053	Thanvi Batteries	090085 63060	vvsrikar91@gmail.com	896/51, 14th Cross Rd, near Mahalakshmi metro station, Mahalakshmipuram Layout, Entrance, Bengaluru, Karnataka 560086	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0069592	77.4782693
54	1054	MJ Batteries & Auto Electricals	93415 67885	vvsrikar91@gmail.com	Shop no 6 Hemanna complex K Narayanapura Main Road, hegde nagar k Narayanpura main road, Thanisandra Main Rd, S R K Nagar, post, Bengaluru, Karnataka 560077	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0671083	77.5658276
83	1083	D C Battery Works	99162 95295	vvsrikar91@gmail.com	152, Canara Bank, Near R M V, Chord Rd, 2nd Stage, Ashwath Nagar, Mahalakshmipuram Layout, Mahalakshmipuram, Bengaluru, Karnataka 560094	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0268606	77.5089717
55	1055	S.M BATTERY	96635 65350	vvsrikar91@gmail.com	Number 259, 2 Road, GM Palya Main Rd, opposite Anjaneya Swami Temple Road, New Thippasandra Post, Cauveri Colony, GM Palya, C V Raman Nagar, Bengaluru, Karnataka 560075	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9751193	77.5946727
56	1056	V M POWER SERVICE	97384 45551	vvsrikar91@gmail.com	#999/3 Sai Nivas 5TH A Cross Road, Outer Ring Rd, HRBR Layout, Kalyan Nagar, Bengaluru, Karnataka 560043	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0210606	77.5821339
57	1057	SGS Batteries - Battery Shop	93412 13239	vvsrikar91@gmail.com	Old mission compound, Before Jain college, 135/2, Lal Bagh Main Rd, Vinobha Nagar, Sudhama Nagar, Bengaluru, Karnataka 560027	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.960304	77.5174727
58	1058	Pace Automobiles	080 2333 2338	vvsrikar91@gmail.com	6th A Main Rd, next to BMTC Bus Depot, HMT Layout, RT Nagar, Bengaluru, Karnataka 560032	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0286403	77.5233632
59	1059	Exide Care - Instart Battery House	82911 09051	vvsrikar91@gmail.com	No 802, Shop, 3 & 4, 7th Cross Rd, MRCR Layout, MC Layout, Rajajinagar, Bengaluru, Karnataka 560040	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.976854	77.4727191
60	1060	Sri Vinayaka Car Electricals	98861 04006	vvsrikar91@gmail.com	3H86+R27, Nanjappa Layout, Chamundeswari Layout, Jalahalli East, Bengaluru, Karnataka 560097	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0670188	77.4900162
61	1061	Exide Care - City Batteries	91674 16018	vvsrikar91@gmail.com	No 289, 17 & 18 Cross, Main, Sampige Rd, Malleshwaram, Bengaluru, Karnataka 560003	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0069512	77.4996826
62	1062	S K BATTERIES & AUTO ELECTRICALS	99015 92671	vvsrikar91@gmail.com	212 3rd cross, 17th Main Rd, FF Layout, Laggere, Bengaluru, Karnataka 560058	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0047268	77.4587949
63	1063	N R BATTERY CENTER	99804 10001	vvsrikar91@gmail.com	Cock Burn road, Hafeez manzil, Near by bamboo bazaar Shivaji nagar, Pulikeshi Nagar, Bengaluru, Karnataka 560051	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9906693	77.5337764
64	1064	SHREE LAKSHMI NARASIMHA BATTERY POINT	95914 07981	vvsrikar91@gmail.com	Doddabommasandra, Bengaluru, Karnataka 560097	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0552236	77.497437
65	1065	A M POWER HOUSE	98804 59843	vvsrikar91@gmail.com	ESI HOSPITAL, 3141, 7th Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560008	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9715481	77.5654551
66	1066	BATTERY HOUSE INC	98456 16749	vvsrikar91@gmail.com	77,Milers Point, Millers Rd, Vasanth Nagar, Bengaluru, Karnataka 560052	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9911758	77.5236016
67	1067	Max Power House	99861 12983	vvsrikar91@gmail.com	10/8-1, Dodda Banaswadi Main Rd, near Ramesh Jewellery, Jaibharath Nagar, Vivekananda Nagar, Maruthi Sevanagar, Bengaluru, Karnataka 560033	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0019924	77.5625871
68	1068	Perfect Services	99001 23313	vvsrikar91@gmail.com	post ner bbmp, 67, Dasarahalli Main Rd, off Hebbal, Nagavara, Bengaluru, Karnataka 560024	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0548972	77.5424125
69	1069	Exide	99862 84136	vvsrikar91@gmail.com	2H72+6V8, Chord Rd, Yeshwanthpur Industrial Suburb, Rajajinagar, Bengaluru, Karnataka 560010	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0130285	77.4821684
70	1070	S R battery point - Home delivery and Road side assistance	90364 00452	vvsrikar91@gmail.com	bus stop, next to Attur layout, Attur Layout, Yelahanka New Town, Bengaluru, Karnataka 560064	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0980457	77.4978791
71	1071	Kamal Battery House	94484 57484	vvsrikar91@gmail.com	2JGC+Q9J, 1st Main Rd, 1st Stage, Kadugondanahalli, Bengaluru, Karnataka 560045	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0269456	77.550857
72	1072	Nataesh Batteries	99019 77835	vvsrikar91@gmail.com	No 113, 1, 2nd Main Rd, near Nataraja Theatre, Jai Bheema Nagar, Seshadripuram, Bengaluru, Karnataka 560020	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.1120298	77.6818575
73	1073	S B BATTERY SERVICE	96324 35574	vvsrikar91@gmail.com	68 binnibande circle, Doddakammanahalli Main Rd, Hulimavu, Bengaluru, Karnataka 560076	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.8651338	77.5284408
74	1074	B.R.Enterprises, Exide battery	99457 54658	vvsrikar91@gmail.com	18/1 8th main road, 18th Cross Rd, opposite Bharat Petrol Pump, Malleshwaram, Bengaluru, Karnataka 560055	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0092633	77.4930412
75	1075	ASK BATTERY CENTER	97137 69683	vvsrikar91@gmail.com	#643/A,22nd cross, 14th Main Rd, 1st Stage, Kumaraswamy Layout, Bengaluru, Karnataka 560078	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9068542	77.4934515
76	1076	Al han Batteries	97394 44022	vvsrikar91@gmail.com	#34, 80 feet road, opp HP petrol bunk, HBR layout,k k halli, Bengaluru, Karnataka 560043	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0263071	77.5609893
77	1077	Kadur Automobile Electrical Works	72048 97707	vvsrikar91@gmail.com	Sri Manjunatha Palace, Thanisandra Main Rd, Ashwath Nagar, Sinthan Nagar, Bengaluru, Karnataka 560077	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0545535	77.5614624
78	1078	M.S. Batterys	97404 05536	vvsrikar91@gmail.com	100 Feet Road, 32, 9th C Main Rd, Next To-I, O B, Banaswadi, Bengaluru, Karnataka 560043	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0132237	77.5780158
79	1079	Shri Balaji Battery Corner	81472 76513	vvsrikar91@gmail.com	#5 Gangondanahalli Main Road Opp Ganga International School Post, Nagasandra, Bengaluru, Karnataka 560073	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0282436	77.4257405
80	1080	Bangalore batteries	90361 94775	vvsrikar91@gmail.com	Shop no. 227, 1, 5th Main Rd, Mahantara Layout, Mahantara Lay Out, Kempegowda Nagar, Bengaluru, Karnataka 560019	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.951576	77.4963902
81	1081	Byreshwara Battery Service Centre	76767 58032	vvsrikar91@gmail.com	119, Dodda Basti Main Rd, Raju Badavane, Bhuvaneshwari Nagar, Nagdevanahalli, Bengaluru, Karnataka 560056	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.941707	77.4221833
82	1082	S V Battery Sales & Service	91482 54813	vvsrikar91@gmail.com	Panathur Main Rd, near petrol bank, Munireddy Layout, Kadubeesanahalli, Panathur, Bengaluru, Karnataka 560103	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.938024	77.6295153
84	1084	Sri Rama Battery Services Centre	99452 64343	vvsrikar91@gmail.com	60 Feet Road, 38, 1st Main Rd, Shivanagar, Rajajinagar, Bengaluru, Karnataka 560079	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9882436	77.4791683
85	1085	Four Door's Car Garage	99804 03770	vvsrikar91@gmail.com	25, 1, 2nd Cross Rd, MM Layout, Anchappa Garden, J.C.Nagar, Bengaluru, Karnataka 560006	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0091731	77.5257866
86	1086	Sri Rameshwara Battery Work	98457 54757	vvsrikar91@gmail.com	191, Nettakallappa Circle, Subbarama Chetty Road, Bengaluru, Karnataka 560004	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9396847	77.502265
87	1087	Sri Ranganatha Battery Services	90359 69055	vvsrikar91@gmail.com	158, Manipal County Rd, near Samruddi Kuteera Food Court, Chikka Begur, AECS C Block, Singasandra, Bengaluru, Karnataka 560068	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.8788905	77.5671006
88	1088	Exide Care - Sandhya Electricals	080 6955 8976	vvsrikar91@gmail.com	No 1246, H A, Farm, Dasarahalli, Bengaluru, Karnataka 560024	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0282558	77.5152485
89	1089	Mc sales and services	98454 29440	vvsrikar91@gmail.com	2, 10th cross GANASANKARAPPA layout Oil mil road, post, near ganesha temple, AravindNagar, St Thomas Town, Bengaluru, Karnataka 560084	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0131561	77.5612088
90	1090	S M Bikes Repair and service garage	90666 65554	vvsrikar91@gmail.com	1st Main Rd, Rachenahalli, Thanisandra, Bengaluru, Karnataka 560045	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0590545	77.5539441
91	1091	Kunguma Tyres & Puncher Shop	78269 88339	vvsrikar91@gmail.com	#107, 7th Main road, 17th Cross, Chinnayanpalya, Lakkasandra Extension, Wilson Garden, Bengaluru, Karnataka 560030	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.946267	77.5318025
92	1092	Puncture Shop Bharath Tyres	98451 65534	vvsrikar91@gmail.com	12th A Main Rd, Kaveri Nagar, Bommanahalli, Bengaluru, Karnataka 560068	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9001261	77.5525517
93	1093	Puncture Care	90667 78567	vvsrikar91@gmail.com	560, Doddakannelli, Bengaluru, Karnataka 560035	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9096804	77.6177793
94	1094	Nagapura Tyre Puncture Shop	99809 38219	vvsrikar91@gmail.com	6th Main Road, Mahalakshmi Puram, No, 12th C Cross Rd, West of Chord Road 2nd Stage, Nagapura, Bengaluru, Karnataka 560086	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0021004	77.474222
95	1095	Royal Tires	90080 32637	vvsrikar91@gmail.com	No66 8th Cross 17th Main, BTM 1st Stage, Bengaluru, Karnataka 560029	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	13.0748682	77.7053722
96	1096	Tyresnmore Online Private Limited	92127 51275	vvsrikar91@gmail.com	Near, No 19/1 , 1st and 2nd floor, ST. John's Road, Commercial Street, Bengaluru, Karnataka 560042	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9827312	77.5412954
97	1097	City Tyres Puncture Repair	96119 22284	vvsrikar91@gmail.com	95, 1st Main Cross, S.T. Bed, 1st Block Koramangala, Ejipura, Bengaluru, Karnataka 560034	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.929226	77.5649059
98	1098	Sri Madeshwara online Tyre Puncture Shop	91135 23914	vvsrikar91@gmail.com	43/1, KP Agrahara, Binnipete, Kempapura Agrahara, Bengaluru, Karnataka 560023	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9692304	77.4842158
99	1099	N,M. Two Wheelers Services And Puncture Shop	97415 43011	vvsrikar91@gmail.com	Shop Number-21, 22nd Main Road Corporation Building, 41st Cross Rd, 4th T Block East, Jayanagara 9th Block, Jayanagar, Bengaluru, Karnataka 560069	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.8902449	77.5065147
100	1100	Bridgestone Select - Ashoka Tyres & Service	77606 05564	vvsrikar91@gmail.com	No - 35/5 , Langford Road, Double Rd, cross, Shanti Nagar, Bengaluru, Karnataka 560025	Bangalore	Karnataka	560024	India	2023-07-13	1	1	abc	f	100	xyz	12.9621221	77.5253979
\.


--
-- Data for Name: A2Zbackend_companyfeatures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_companyfeatures" (id, company_features_id, name, create_date, company_id_id, feature_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_companypricing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_companypricing" (id, default_rate, company_id_id, rate_item_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_customerfeedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_customerfeedback" (id, review, rating, name, phone, notes, customer_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_customers" (customer_id, name, email, phone, whatsapp_number) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_dispatchentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_dispatchentry" (dispatch_entry_id, create_date, partner_caseid, partner_service_id, source, repair_status, scheduled_date, is_scheduled, pickup_location, dropoff_location, eta, ata, account_id_id, asset_id_id, case_id, company_id_id, csr_id_id, customer_id_id, dispatch_status_id_id, invoice_id_id, payment_id_id, payment_status_id, reason_id_id, service_type_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_dispatchentryassets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_dispatchentryassets" (asset_id, colorid, body_type_id, make, model, model_year, license_plate, license_state, license_year, create_date, customer_id_id, dispatch_entry_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_dispatchstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_dispatchstatus" (dispatch_status_id, name) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_driverlocation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_driverlocation" ("driverLocation_id", create_date, latitude, longitude, company_id_id) FROM stdin;
1	2023-07-17	12.936400520005753	77.5184302407788	1
2	2023-07-17	12.924099492973442	77.49866996654633	1
3	2023-07-17	12.90478220068692	77.52702402264258	1
4	2023-07-17	12.889247898564697	77.56346501818936	1
5	2023-07-17	12.908168168561009	77.57348634886314	1
6	2023-07-17	12.975695505677146	77.57285066516235	1
7	2023-07-17	12.97442339442419	77.55166744583474	1
8	2023-07-17	13.01018080463207	77.55084388712095	1
9	2023-07-17	12.975945955878794	77.53444140436896	1
10	2023-07-17	12.946268423791734	77.58006614566148	1
\.


--
-- Data for Name: A2Zbackend_features; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_features" (feature_id, name, create_date) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_invoices" (invoice_id, create_date, reference_number, ponumber, txn_number, customer, customer_name, subtotal, tax, total_amount, billing_email, dispatch_amount, dispatch_rate) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_payments" (payment_id, notes, txn_number, payment_type, amount, create_date, status, invoice_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_rateitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_rateitem" (rate_item_id, name, account_name, account_company_id, account_id_id, vehicle_id_id, budget_2w, budget_4w, default_rate_2w, default_rate_4w, luxury_2w, luxury_4w, premium_2w, premium_4w, suv_4w) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_reasons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_reasons" (reason_id, name, create_date, service_type) FROM stdin;
1	AIR FILL	2023-07-13	ROS
2	BATTERY JUMPSTART	2023-07-13	ROS
3	BATTERY REPLACEMENT	2023-07-13	ROS
4	CABLE CUT	2023-07-13	ROS
5	CHAIN ISSUE	2023-07-13	ROS
6	CLUTCH ISSUE	2023-07-13	ROS
7	CUSTODY SERVICE	2023-07-13	ROS
8	FUEL DELIVERY (DIESEL)	2023-07-13	ROS
9	FUEL DELIVERY (PETROL)	2023-07-13	ROS
10	KEY LOCKOUT	2023-07-13	ROS
11	OTHER REPAIRS	2023-07-13	ROS
12	PUNCTURE-TUBE TYRE	2023-07-13	ROS
13	PUNCTURE-TUBELESS TYRE	2023-07-13	ROS
14	STARTING TROUBLE	2023-07-13	ROS
15	Towing	2023-07-13	TOW
16	NEUTRAL MODE	2023-07-13	ROS
17	STEPNEY CHANGE	2023-07-13	ROS
\.


--
-- Data for Name: A2Zbackend_servicetypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_servicetypes" (service_type_id, service, service_type) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_systemuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_systemuser" (csr_id, name, create_date, role, role_id, status) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_systemuserstatusrecords; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_systemuserstatusrecords" (id, previous_csr_id, new_csr_id, create_date, dispatch_entry_id_id) FROM stdin;
\.


--
-- Data for Name: A2Zbackend_vehicles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."A2Zbackend_vehicles" (vehicle_id, make, vehicle_class, vehicle_type) FROM stdin;
1	22 KYMCO IFLOW	BUDGET ELECTRIC 2W	2
2	22 KYMCO LIKE 200	PREMIUM SCOOTER	2
3	22 KYMCO NOT IN LIST	PREMIUM BIKE	2
4	22 KYMCO X TOWN	PREMIUM SCOOTER	2
5	AMPERE NOT IN LIST	PREMIUM BIKE	2
6	AMPERE REO	BUDGET ELECTRIC 2W	2
7	AMPERE V48	BUDGET ELECTRIC 2W	2
8	APRILIA CAPONORD 1200	PREMIUM BIKE	2
9	APRILIA DORSUDORO	PREMIUM BIKE	2
10	APRILIA DORSUDORO 900	PREMIUM BIKE	2
11	APRILIA MANA	PREMIUM BIKE	2
12	APRILIA NOT IN LIST	PREMIUM BIKE	2
13	APRILIA RS125	BUDGET SCOOTER	2
14	APRILIA RSV4	PREMIUM BIKE	2
15	APRILIA RX125	PREMIUM BIKE	2
16	APRILIA SHIVER 900	PREMIUM BIKE	2
17	APRILIA SR 125	BUDGET SCOOTER	2
18	APRILIA SR 150	BUDGET SCOOTER	2
19	APRILIA SR 150 RACE	BUDGET SCOOTER	2
20	APRILIA SRV 850	PREMIUM BIKE	2
21	APRILIA SRX 160	PREMIUM BIKE	2
22	APRILIA STORM 125	PREMIUM BIKE	2
23	APRILIA TUONO	PREMIUM BIKE	2
24	ATHER 450X	PREMIUM ELECTRIC 2W	2
25	ATHER NOT IN LIST	PREMIUM ELECTRIC 2W	2
26	ATHER S340	PREMIUM ELECTRIC 2W	2
27	ATHER S450	PREMIUM ELECTRIC 2W	2
28	AVAN NOT IN LIST	PREMIUM BIKE	2
29	AVAN XERO+	BUDGET SCOOTER	2
30	AVANTURAA CHOPPERS NOT IN LIST	PREMIUM BIKE	2
31	AVANTURAA CHOPPERS PRAVEGA	PREMIUM BIKE	2
32	AVON E BIKE	BUDGET ELECTRIC 2W	2
33	AVON E LITE	BUDGET ELECTRIC 2W	2
34	AVON E MATE	BUDGET ELECTRIC 2W	2
35	AVON E PLUS	BUDGET ELECTRIC 2W	2
36	AVON E STAR	BUDGET ELECTRIC 2W	2
37	AVON NOT IN LIST	BUDGET ELECTRIC 2W	2
38	BAJAJ AVENGER 220	PREMIUM BIKE	2
39	BAJAJ AVENGER STREET 160	PREMIUM BIKE	2
40	BAJAJ AVENGER STREET 180	PREMIUM BIKE	2
41	BAJAJ AVENGER STREET 220	PREMIUM BIKE	2
42	BAJAJ AVNGER CRUISE 220	PREMIUM BIKE	2
43	BAJAJ CHETAK	PREMIUM SCOOTER	2
44	BAJAJ CT100	BELOW 150CC BIKE	2
45	BAJAJ CT110	BELOW 150CC BIKE	2
46	BAJAJ CT110X	BELOW 150CC BIKE	2
47	BAJAJ DISCOVER100	BELOW 150CC BIKE	2
48	BAJAJ DISCOVER100 M	BELOW 150CC BIKE	2
49	BAJAJ DISCOVER100 T	BELOW 150CC BIKE	2
50	BAJAJ DISCOVER110	BELOW 150CC BIKE	2
51	BAJAJ DISCOVER125	BELOW 150CC BIKE	2
52	BAJAJ DISCOVER125 M	BELOW 150CC BIKE	2
53	BAJAJ DISCOVER125 T	BELOW 150CC BIKE	2
54	BAJAJ DISCOVER150	151CC TO 350 CC BIKE 	2
55	BAJAJ DISCOVER150 F	151CC TO 350 CC BIKE 	2
56	BAJAJ DISCOVER150 S	151CC TO 350 CC BIKE 	2
57	BAJAJ DOMINAR 250	151CC TO 350 CC BIKE 	2
58	BAJAJ DOMINAR 400	PREMIUM BIKE	2
59	BAJAJ NOT IN LIST	PREMIUM BIKE	2
60	BAJAJ NS160	PREMIUM BIKE	2
61	BAJAJ PLATINA 100	BELOW 150CC BIKE	2
62	BAJAJ PLATINA 100 ES	BELOW 150CC BIKE	2
63	BAJAJ PLATINA 110	BELOW 150CC BIKE	2
64	BAJAJ PULSAR 125	BELOW 150CC BIKE	2
65	BAJAJ PULSAR 125 NEON	BELOW 150CC BIKE	2
66	BAJAJ PULSAR 125 NS	BELOW 150CC BIKE	2
67	BAJAJ PULSAR 135 LS	BELOW 150CC BIKE	2
68	BAJAJ PULSAR 150	BELOW 150CC BIKE	2
69	BAJAJ PULSAR 150 DTS I	151CC TO 350 CC BIKE 	2
70	BAJAJ PULSAR 160 NS	151CC TO 350 CC BIKE 	2
71	BAJAJ PULSAR 180	151CC TO 350 CC BIKE 	2
72	BAJAJ PULSAR 180 NEON F	151CC TO 350 CC BIKE 	2
73	BAJAJ PULSAR 200 F	151CC TO 350 CC BIKE 	2
74	BAJAJ PULSAR 200 NS	PREMIUM BIKE	2
75	BAJAJ PULSAR 220F	PREMIUM BIKE	2
76	BAJAJ PULSAR RS 200	PREMIUM BIKE	2
77	BAJAJ V12	BELOW 150CC BIKE	2
78	BAJAJ V15	BELOW 150CC BIKE	2
79	BENELLI 302R	PREMIUM BIKE	2
80	BENELLI 402 S	PREMIUM BIKE	2
81	BENELLI 502 C	PREMIUM BIKE	2
82	BENELLI 752 S	PREMIUM BIKE	2
83	BENELLI IMPERIALE 400	PREMIUM BIKE	2
84	BENELLI LEONCINO	PREMIUM BIKE	2
85	BENELLI LEONCINO 250	PREMIUM BIKE	2
86	BENELLI LEONCINO 500	PREMIUM BIKE	2
87	BENELLI NOT IN LIST	PREMIUM BIKE	2
88	BENELLI TNT 1130 R	PREMIUM BIKE	2
89	BENELLI TNT 135	PREMIUM BIKE	2
90	BENELLI TNT 25	PREMIUM BIKE	2
91	BENELLI TNT 300	PREMIUM BIKE	2
92	BENELLI TNT 302	PREMIUM BIKE	2
93	BENELLI TNT 302 S	PREMIUM BIKE	2
94	BENELLI TNT 600 GT	PREMIUM BIKE	2
95	BENELLI TNT 600 I	PREMIUM BIKE	2
96	BENELLI TNT 899 	PREMIUM BIKE	2
97	BENELLI TNT R	PREMIUM BIKE	2
98	BENELLI TRK 451	PREMIUM BIKE	2
99	BENELLI TRK 502	PREMIUM BIKE	2
100	BGAUSS A2	BUDGET ELECTRIC 2W	2
101	BGAUSS B8	BUDGET ELECTRIC 2W	2
102	BIG DOG MOTORCYCLES K9 RED CHOPPER	PREMIUM BIKE	2
103	BMW F 750 GS	PREMIUM BIKE	2
104	BMW F 850 GS	PREMIUM BIKE	2
105	BMW G 310 GS	PREMIUM BIKE	2
106	BMW G 310 R	PREMIUM BIKE	2
107	BMW K 1300 R	PREMIUM BIKE	2
108	BMW K 1300 S	PREMIUM BIKE	2
109	BMW K 1600 B	PREMIUM BIKE	2
110	BMW K 1600 GT	PREMIUM BIKE	2
111	BMW K 1600 GTL	PREMIUM BIKE	2
112	BMW NOT IN LIST	PREMIUM BIKE	2
113	BMW R 1200 GS	PREMIUM BIKE	2
114	BMW R 1200 GS ADVENTURE	PREMIUM BIKE	2
115	BMW R 1200 R	PREMIUM BIKE	2
116	BMW R 1200 RS	PREMIUM BIKE	2
117	BMW R 1200 RT	PREMIUM BIKE	2
118	BMW R 1250 GS	PREMIUM BIKE	2
119	BMW R 1250 GS ADVENTURE	PREMIUM BIKE	2
120	BMW R NINE T	PREMIUM BIKE	2
121	BMW R NINE T RACER	PREMIUM BIKE	2
122	BMW R NINE T SCRAMBLER	PREMIUM BIKE	2
123	BMW S 1000 R	PREMIUM BIKE	2
124	BMW S 1000 RR	PREMIUM BIKE	2
125	BMW S 1000 XR	PREMIUM BIKE	2
126	CARBERRY  DOUBLE BARREL	PREMIUM BIKE	2
127	CARBERRY  NOT IN LIST	PREMIUM BIKE	2
128	CF MOTO 300NK	PREMIUM BIKE	2
129	CF MOTO 650GT	PREMIUM BIKE	2
130	CF MOTO 650MT	PREMIUM BIKE	2
131	CF MOTO 650NK	PREMIUM BIKE	2
132	CF MOTO NOT IN LIST	PREMIUM BIKE	2
133	CLEVELAND CYCLEWORKS BIKES ACE CAFE	PREMIUM BIKE	2
134	CLEVELAND CYCLEWORKS BIKES ACE DELUXE 250	PREMIUM BIKE	2
135	CLEVELAND CYCLEWORKS BIKES ACE SCRAMBLER	PREMIUM BIKE	2
136	CLEVELAND CYCLEWORKS BIKES MISFIT	PREMIUM BIKE	2
137	CLEVELAND CYCLEWORKS BIKES NOT IN LIST	PREMIUM BIKE	2
138	DUCATI 1299 PANIGALE	PREMIUM BIKE	2
139	DUCATI 939 SUPERSPORT	PREMIUM BIKE	2
140	DUCATI 959 PANIGALE	PREMIUM BIKE	2
141	DUCATI DESERT SLED	PREMIUM BIKE	2
142	DUCATI DIAVEL	PREMIUM BIKE	2
143	DUCATI DIAVEL 1260	PREMIUM BIKE	2
144	DUCATI HYPERMOTARD 950	PREMIUM BIKE	2
145	DUCATI MONSTER	PREMIUM BIKE	2
146	DUCATI MONSTER 1200	PREMIUM BIKE	2
147	DUCATI MONSTER 797	PREMIUM BIKE	2
148	DUCATI MONSTER 821	PREMIUM BIKE	2
149	DUCATI MULTISTRADA	PREMIUM BIKE	2
150	DUCATI MULTISTRADA 1260	PREMIUM BIKE	2
151	DUCATI MULTISTRADA 950	PREMIUM BIKE	2
152	DUCATI NOT IN LIST	PREMIUM BIKE	2
153	DUCATI PANIGALE V4	PREMIUM BIKE	2
154	DUCATI SCRAMBLER	PREMIUM BIKE	2
155	DUCATI SCRAMBLER 1100	PREMIUM BIKE	2
156	DUCATI STREETFIGHTER	PREMIUM BIKE	2
157	DUCATI SUPER SPORT	PREMIUM BIKE	2
158	DUCATI SUPERBIKE	PREMIUM BIKE	2
159	DUCATI XDIAVEL	PREMIUM BIKE	2
160	EMFLUX NOT IN LIST	PREMIUM BIKE	2
161	EMFLUX ONE	PREMIUM BIKE	2
162	EVOLET DERBY	PREMIUM BIKE	2
163	EVOLET NOT IN LIST	PREMIUM BIKE	2
164	EVOLET POLO	PREMIUM BIKE	2
165	EVOLET PONY	PREMIUM BIKE	2
166	FB MONDIAL HPS300	PREMIUM BIKE	2
167	FB MONDIAL NOT IN LIST	PREMIUM BIKE	2
168	GEMOPAI ASTRID	BUDGET ELECTRIC 2W	2
169	GEMOPAI NOT IN LIST	BUDGET ELECTRIC 2W	2
170	HARLEY-DAVIDSON 1200 CUSTOM	PREMIUM BIKE	2
171	HARLEY-DAVIDSON 750	PREMIUM BIKE	2
172	HARLEY-DAVIDSON BREAKOUT	PREMIUM BIKE	2
173	HARLEY-DAVIDSON CVO LIMITED	PREMIUM BIKE	2
174	HARLEY-DAVIDSON DELUXE	PREMIUM BIKE	2
175	HARLEY-DAVIDSON FAT BOB	PREMIUM BIKE	2
176	HARLEY-DAVIDSON FAT BOY	PREMIUM BIKE	2
177	HARLEY-DAVIDSON FAT BOY ANNIVERSARY	PREMIUM BIKE	2
178	HARLEY-DAVIDSON FORTY EIGHT	PREMIUM BIKE	2
179	HARLEY-DAVIDSON FORTY EIGHT SPECIAL	PREMIUM BIKE	2
180	HARLEY-DAVIDSON HERITAGE CLASSIC	PREMIUM BIKE	2
181	HARLEY-DAVIDSON HERITAGE SOFTAIL CLASSIC	PREMIUM BIKE	2
182	HARLEY-DAVIDSON IRON 1200	PREMIUM BIKE	2
183	HARLEY-DAVIDSON IRON 883	PREMIUM BIKE	2
184	HARLEY-DAVIDSON LOW RIDER	PREMIUM BIKE	2
185	HARLEY-DAVIDSON NIGHT ROD SPECIAL	PREMIUM BIKE	2
186	HARLEY-DAVIDSON NOT IN LIST	PREMIUM BIKE	2
187	HARLEY-DAVIDSON ROAD GLIDE SPECIAL	PREMIUM BIKE	2
188	HARLEY-DAVIDSON ROAD KING	PREMIUM BIKE	2
189	HARLEY-DAVIDSON ROADSTER	PREMIUM BIKE	2
190	HARLEY-DAVIDSON STREET 750	PREMIUM BIKE	2
191	HARLEY-DAVIDSON STREET BOB	PREMIUM BIKE	2
192	HARLEY-DAVIDSON STREET GLIDE SPECIAL	PREMIUM BIKE	2
193	HARLEY-DAVIDSON STREET ROD	PREMIUM BIKE	2
194	HARLEY-DAVIDSON SUPER LOW	PREMIUM BIKE	2
195	HERO ACHIEVER	151CC TO 350 CC BIKE 	2
196	HERO AE-47	PREMIUM ELECTRIC 2W	2
197	HERO CBZ XTREME	151CC TO 350 CC BIKE 	2
198	HERO CD 100	BELOW 150CC BIKE	2
199	HERO CD DAWN	BELOW 150CC BIKE	2
200	HERO CD DELUXE	BELOW 150CC BIKE	2
201	HERO DARE	BUDGET SCOOTER	2
202	HERO DESTINI 125	BUDGET SCOOTER	2
203	HERO DUET	BUDGET SCOOTER	2
204	HERO E-DUET	BUDGET SCOOTER	2
205	HERO ELECTRIC A2B	BUDGET ELECTRIC 2W	2
206	HERO ELECTRIC AXLHE-20	BUDGET ELECTRIC 2W	2
207	HERO ELECTRIC CRUZ	BUDGET ELECTRIC 2W	2
208	HERO ELECTRIC FLASH	BUDGET ELECTRIC 2W	2
209	HERO ELECTRIC NOT IN LIST	BUDGET ELECTRIC 2W	2
210	HERO ELECTRIC NYX	BUDGET ELECTRIC 2W	2
211	HERO ELECTRIC NYX E5	BUDGET ELECTRIC 2W	2
212	HERO ELECTRIC OPTIMA DX	BUDGET ELECTRIC 2W	2
213	HERO ELECTRIC OPTIMA PLUS	BUDGET ELECTRIC 2W	2
214	HERO ELECTRIC PHOTON	BUDGET ELECTRIC 2W	2
215	HERO GLAMOUR	BELOW 150CC BIKE	2
216	HERO GLAMOUR XTEC	BELOW 150CC BIKE	2
217	HERO HF 100	BELOW 150CC BIKE	2
218	HERO HF DAWN	BELOW 150CC BIKE	2
219	HERO HF DELUXE	BELOW 150CC BIKE	2
220	HERO HF DELUXE ECO	BELOW 150CC BIKE	2
221	HERO HUNK	BELOW 150CC BIKE	2
222	HERO IGNITOR	BELOW 150CC BIKE	2
223	HERO IMPULSE 	BELOW 150CC BIKE	2
224	HERO IMPULSE 250	151CC TO 350 CC BIKE 	2
225	HERO KARIZMA	151CC TO 350 CC BIKE 	2
226	HERO KARIZMA ZMR	151CC TO 350 CC BIKE 	2
227	HERO MAESTRO EDGE	BUDGET SCOOTER	2
228	HERO MAESTRO EDGE 125	BUDGET SCOOTER	2
229	HERO NEW MAESTRO EDGE	BUDGET SCOOTER	2
230	HERO NEW MAESTRO EDGE 125	BUDGET SCOOTER	2
231	HERO NOT IN LIST	PREMIUM BIKE	2
232	HERO PASSION PRO	BELOW 150CC BIKE	2
233	HERO PASSION PRO 110	BELOW 150CC BIKE	2
234	HERO PASSION PRO TR	BELOW 150CC BIKE	2
235	HERO PASSION XPRO	BELOW 150CC BIKE	2
236	HERO PLEASURE	BELOW 150CC BIKE	2
237	HERO PLEASURE PLUS	BELOW 150CC BIKE	2
238	HERO PLEASURE PLUS XTEC	BUDGET SCOOTER	2
239	HERO SPLENDOR ISMART	BELOW 150CC BIKE	2
240	HERO SPLENDOR NXG	BELOW 150CC BIKE	2
241	HERO SPLENDOR PLUS	BELOW 150CC BIKE	2
242	HERO SPLENDOR PRO 	BELOW 150CC BIKE	2
243	HERO SPLENDOR PRO CLASSIC	BELOW 150CC BIKE	2
244	HERO SUPER SPLENDOR	BELOW 150CC BIKE	2
245	HERO XF3R	PREMIUM BIKE	2
246	HERO XPLUSE 200	151CC TO 350 CC BIKE 	2
247	HERO XPLUSE 200T	151CC TO 350 CC BIKE 	2
248	HERO XTREME 	151CC TO 350 CC BIKE 	2
249	HERO XTREME 160R	151CC TO 350 CC BIKE 	2
250	HERO XTREME 200R	151CC TO 350 CC BIKE 	2
251	HERO XTREME 200S	151CC TO 350 CC BIKE 	2
252	HERO XTREME SPORTS	BELOW 150CC BIKE	2
253	HONDA ACTIVA	BUDGET SCOOTER	2
254	HONDA ACTIVA 125	BUDGET SCOOTER	2
255	HONDA ACTIVA 5G	BUDGET SCOOTER	2
256	HONDA ACTIVA 6G	BUDGET SCOOTER	2
257	HONDA ACTIVA I	BUDGET SCOOTER	2
258	HONDA AVIATOR	BUDGET SCOOTER	2
259	HONDA CB 1000R PLUS	PREMIUM BIKE	2
260	HONDA CB 200X	PREMIUM BIKE	2
261	HONDA CB 300R	PREMIUM BIKE	2
262	HONDA CB 350	PREMIUM BIKE	2
263	HONDA CB 350 RS	PREMIUM BIKE	2
264	HONDA CB HORNET 160R	151CC TO 350 CC BIKE 	2
265	HONDA CB SHINE	BELOW 150CC BIKE	2
266	HONDA CB SHINE SP	BELOW 150CC BIKE	2
267	HONDA CB UNICORN 150	151CC TO 350 CC BIKE 	2
268	HONDA CB UNICORN 160	151CC TO 350 CC BIKE 	2
269	HONDA CB1100EX	PREMIUM BIKE	2
270	HONDA CB500X	PREMIUM BIKE	2
271	HONDA CB650R	PREMIUM BIKE	2
272	HONDA CBR 1000RR	PREMIUM BIKE	2
273	HONDA CBR 250R	PREMIUM BIKE	2
274	HONDA CBR650R	PREMIUM BIKE	2
275	HONDA CD 110 DREAM	BELOW 150CC BIKE	2
276	HONDA CLIQ	BUDGET SCOOTER	2
277	HONDA CRF 1000 L AFRICA TWIN	PREMIUM BIKE	2
278	HONDA DIO	BUDGET SCOOTER	2
279	HONDA DREAM NEO	BELOW 150CC BIKE	2
280	HONDA DREAM YUGA	BELOW 150CC BIKE	2
281	HONDA GOLD WING	PREMIUM BIKE	2
282	HONDA GRAZIA	BUDGET SCOOTER	2
283	HONDA GRAZIA 125	BUDGET SCOOTER	2
284	HONDA HORNET 2.0	151CC TO 350 CC BIKE 	2
285	HONDA LIVO	BELOW 150CC BIKE	2
286	HONDA MSX125GROM	BELOW 150CC BIKE	2
287	HONDA NAVI	BUDGET SCOOTER	2
288	HONDA NEW HORNET 2.0	151CC TO 350 CC BIKE 	2
289	HONDA NOT IN LIST	PREMIUM BIKE	2
290	HONDA RC213V	PREMIUM BIKE	2
291	HONDA REBEL300	PREMIUM BIKE	2
292	HONDA SP125	PREMIUM BIKE	2
293	HONDA VFR1200F	PREMIUM BIKE	2
294	HONDA VT1300CX	PREMIUM BIKE	2
295	HONDA X-ADV	PREMIUM BIKE	2
296	HONDA XBLADE	151CC TO 350 CC BIKE 	2
297	HUSQVARNA NOT IN LIST	PREMIUM BIKE	2
298	HUSQVARNA SVARTPILEN 	PREMIUM BIKE	2
299	HUSQVARNA VITPILEN	PREMIUM BIKE	2
300	HYOSUNG AQUILA 250	PREMIUM BIKE	2
301	HYOSUNG AQUILA GT250RC	PREMIUM BIKE	2
302	HYOSUNG AQUILA PRO	PREMIUM BIKE	2
303	HYOSUNG GD	PREMIUM BIKE	2
304	HYOSUNG GT250R	PREMIUM BIKE	2
305	HYOSUNG GT300 R	PREMIUM BIKE	2
306	HYOSUNG GT650N	PREMIUM BIKE	2
307	HYOSUNG GT650R	PREMIUM BIKE	2
308	HYOSUNG NOT IN LIST	PREMIUM BIKE	2
309	HYOSUNG ST7	PREMIUM BIKE	2
310	INDIAN MOTORCYCLES INDIAN CHIEF	PREMIUM BIKE	2
311	INDIAN MOTORCYCLES INDIAN CHIEF CLASSIC 	PREMIUM BIKE	2
312	INDIAN MOTORCYCLES INDIAN CHIEF DARK HORSE	PREMIUM BIKE	2
313	INDIAN MOTORCYCLES INDIAN CHIEF VINTAGE	PREMIUM BIKE	2
314	INDIAN MOTORCYCLES INDIAN CHIEFTAIN	PREMIUM BIKE	2
315	INDIAN MOTORCYCLES INDIAN CHIEFTAIN CLASSIC	PREMIUM BIKE	2
316	INDIAN MOTORCYCLES INDIAN CHIEFTAIN DARK HORSE	PREMIUM BIKE	2
317	INDIAN MOTORCYCLES INDIAN CHIEFTAIN ELITE	PREMIUM BIKE	2
318	INDIAN MOTORCYCLES INDIAN CHIEFTAIN LIMITED	PREMIUM BIKE	2
319	INDIAN MOTORCYCLES INDIAN FTR 1200 S	PREMIUM BIKE	2
320	INDIAN MOTORCYCLES INDIAN ROADMASTER	PREMIUM BIKE	2
321	INDIAN MOTORCYCLES INDIAN ROADMASTER CLASSIC	PREMIUM BIKE	2
322	INDIAN MOTORCYCLES INDIAN ROADMASTER ELITE	PREMIUM BIKE	2
323	INDIAN MOTORCYCLES INDIAN SCOUT	PREMIUM BIKE	2
324	INDIAN MOTORCYCLES INDIAN SCOUT BOBBER	PREMIUM BIKE	2
325	INDIAN MOTORCYCLES INDIAN SCOUT SIXTY	PREMIUM BIKE	2
326	INDIAN MOTORCYCLES INDIAN SPRINGFIELD  	PREMIUM BIKE	2
327	INDIAN MOTORCYCLES INDIAN SPRINGFIELD DARK HORSE	PREMIUM BIKE	2
328	INDIAN MOTORCYCLES NOT IN LIST	PREMIUM BIKE	2
329	JAWA MOTORCYCLES 90TH ANNIVERSARY EDITION	PREMIUM BIKE	2
330	JAWA MOTORCYCLES JAWA	PREMIUM BIKE	2
331	JAWA MOTORCYCLES JAWA 42	PREMIUM BIKE	2
332	JAWA MOTORCYCLES NOT IN LIST	PREMIUM BIKE	2
333	JAWA MOTORCYCLES PERAK	PREMIUM BIKE	2
334	KAWASAKI ER-6N	PREMIUM BIKE	2
335	KAWASAKI KLX 110	PREMIUM BIKE	2
336	KAWASAKI KLX 140	PREMIUM BIKE	2
337	KAWASAKI KLX 450 R	PREMIUM BIKE	2
338	KAWASAKI KX 100	PREMIUM BIKE	2
339	KAWASAKI KX 250	PREMIUM BIKE	2
340	KAWASAKI KX 450 F	PREMIUM BIKE	2
341	KAWASAKI NINJA 1000	PREMIUM BIKE	2
342	KAWASAKI NINJA 300	PREMIUM BIKE	2
343	KAWASAKI NINJA 400	PREMIUM BIKE	2
344	KAWASAKI NINJA 650	PREMIUM BIKE	2
345	KAWASAKI NINJA H2 	PREMIUM BIKE	2
346	KAWASAKI NINJA H2 SX	PREMIUM BIKE	2
347	KAWASAKI NINJA ZX-10R	PREMIUM BIKE	2
348	KAWASAKI NINJA ZX-14R	PREMIUM BIKE	2
349	KAWASAKI NINJA ZX-6R	PREMIUM BIKE	2
350	KAWASAKI NOT IN LIST	PREMIUM BIKE	2
351	KAWASAKI VERSYS 1000	PREMIUM BIKE	2
352	KAWASAKI VERSYS 650	PREMIUM BIKE	2
353	KAWASAKI VERSYS X 300	PREMIUM BIKE	2
354	KAWASAKI VULCAN S	PREMIUM BIKE	2
355	KAWASAKI Z 650	PREMIUM BIKE	2
356	KAWASAKI Z 900 	PREMIUM BIKE	2
357	KAWASAKI Z 900RS	PREMIUM BIKE	2
358	KAWASAKI Z1000	PREMIUM BIKE	2
359	KAWASAKI Z250	PREMIUM BIKE	2
360	KAWASAKI Z800	PREMIUM BIKE	2
361	KAWASAKI ZX-10RR	PREMIUM BIKE	2
362	KTM 1090 ADVENTURE	PREMIUM BIKE	2
363	KTM 125 DUKE	PREMIUM BIKE	2
364	KTM 1290 SUPER ADVENTURE	PREMIUM BIKE	2
365	KTM 200 DUKE	PREMIUM BIKE	2
366	KTM 250 ADVENTURE	PREMIUM BIKE	2
367	KTM 250 DUKE	PREMIUM BIKE	2
368	KTM 390 ADVENTURE	PREMIUM BIKE	2
369	KTM 390 DUKE	PREMIUM BIKE	2
370	KTM 690 ADVENTURE	PREMIUM BIKE	2
371	KTM 690 DUKE	PREMIUM BIKE	2
372	KTM 690 SMC	PREMIUM BIKE	2
373	KTM 790 ADVENTURE	PREMIUM BIKE	2
374	KTM 790 DUKE	PREMIUM BIKE	2
375	KTM ELECTRIC BALANCE BIKES	PREMIUM BIKE	2
376	KTM NOT IN LIST	PREMIUM BIKE	2
377	KTM RC 125	PREMIUM BIKE	2
378	KTM RC 125 2022	PREMIUM BIKE	2
379	KTM RC 200	PREMIUM BIKE	2
380	KTM RC 200 2022	PREMIUM BIKE	2
381	KTM RC 390	PREMIUM BIKE	2
382	KTM RC 390 2022	PREMIUM BIKE	2
383	KTM REPLICA12EDRIVE	PREMIUM BIKE	2
384	KTM REPLICA16EDRIVE	PREMIUM BIKE	2
385	LI-IONS NOT IN LIST	BUDGET ELECTRIC 2W	2
386	LI-IONS SPOCK	BUDGET ELECTRIC 2W	2
387	LOHIA NOT IN LIST	BUDGET ELECTRIC 2W	2
388	LOHIA OMA STAR	BUDGET ELECTRIC 2W	2
389	LOHIA OMA STAR LI	BUDGET ELECTRIC 2W	2
390	MAHINDRA CENTURO	BELOW 150CC BIKE	2
391	MAHINDRA CENTURO ROCKSTAR	BELOW 150CC BIKE	2
392	MAHINDRA DURO DZ	BUDGET SCOOTER	2
393	MAHINDRA FLYTE	BUDGET SCOOTER	2
394	MAHINDRA GENZE	BUDGET SCOOTER	2
395	MAHINDRA GUSTO	BUDGET SCOOTER	2
396	MAHINDRA GUSTO 125	BUDGET SCOOTER	2
397	MAHINDRA KINE	BUDGET SCOOTER	2
398	MAHINDRA MOJO	BUDGET SCOOTER	2
399	MAHINDRA MOJO UT 300	BUDGET SCOOTER	2
400	MAHINDRA MOJO XT 300	BUDGET SCOOTER	2
401	MAHINDRA NOT IN LIST	BUDGET SCOOTER	2
402	MAHINDRA PANTERO	BELOW 150CC BIKE	2
403	MAHINDRA RODEO RZ	BUDGET SCOOTER	2
404	MAHINDRA RODEO UZO 125	BUDGET SCOOTER	2
405	MAHINDRA SCRAMBLER	PREMIUM BIKE	2
406	MOTO GUZZI AUDACE	PREMIUM BIKE	2
407	MOTO GUZZI CALIFORNIA 1400	PREMIUM BIKE	2
408	MOTO GUZZI EL DORADO	PREMIUM BIKE	2
409	MOTO GUZZI GRISO 1200 8 V	PREMIUM BIKE	2
410	MOTO GUZZI MGX-21	PREMIUM BIKE	2
411	MOTO GUZZI NOT IN LIST	PREMIUM BIKE	2
412	MOTO GUZZI V85TT	PREMIUM BIKE	2
413	MOTO GUZZI V9	PREMIUM BIKE	2
414	MOTO MORINI NOT IN LIST	PREMIUM BIKE	2
415	MV AGUSTA BRUTALE 1090	PREMIUM BIKE	2
416	MV AGUSTA BRUTALE 800	PREMIUM BIKE	2
417	MV AGUSTA DRAGSTER 800 RR	PREMIUM BIKE	2
418	MV AGUSTA F3 800	PREMIUM BIKE	2
419	MV AGUSTA F4	PREMIUM BIKE	2
420	MV AGUSTA NOT IN LIST	PREMIUM BIKE	2
421	MV AGUSTA TURISMO VELOCE 800	PREMIUM BIKE	2
422	NORTON COMMANDO 961 CAFE RACER	PREMIUM BIKE	2
423	NORTON COMMANDO 961 SPORT	PREMIUM BIKE	2
424	NORTON DOMINATOR	PREMIUM BIKE	2
425	NORTON NOT IN LIST	PREMIUM BIKE	2
426	OKINAWA I PRAISE	BUDGET ELECTRIC 2W	2
427	OKINAWA I PRAISE PLUS	BUDGET ELECTRIC 2W	2
428	OKINAWA LITE	BUDGET ELECTRIC 2W	2
429	OKINAWA NOT IN LIST	BUDGET ELECTRIC 2W	2
430	OKINAWA PRAISE	BUDGET ELECTRIC 2W	2
431	OKINAWA PRAISE PRO	BUDGET ELECTRIC 2W	2
432	OKINAWA R30	BUDGET ELECTRIC 2W	2
433	OKINAWA RAISE	BUDGET ELECTRIC 2W	2
434	OKINAWA RIDGE	BUDGET ELECTRIC 2W	2
435	OKINAWA RIDGE PLUS	BUDGET ELECTRIC 2W	2
436	PALATINO ANGEL	BUDGET ELECTRIC 2W	2
437	PALATINO NOT IN LIST	BUDGET ELECTRIC 2W	2
438	PALATINO PRINCESS	BUDGET ELECTRIC 2W	2
439	PALATINO RYAN	BUDGET ELECTRIC 2W	2
440	PALATINO SPYKER	BUDGET ELECTRIC 2W	2
441	PALATINO SUNSHINE	BUDGET ELECTRIC 2W	2
442	PEUGEOT ELECTRIC	BUDGET ELECTRIC 2W	2
443	PEUGEOT SCOOTER	BUDGET ELECTRIC 2W	2
444	REGAL RAPTOR BOBBER	PREMIUM BIKE	2
445	REGAL RAPTOR DAYTONA	PREMIUM BIKE	2
446	REGAL RAPTOR DD350E	PREMIUM BIKE	2
447	REGAL RAPTOR NOT IN LIST	PREMIUM BIKE	2
448	REVOLT MOTORS NOT IN LIST	PREMIUM BIKE	2
449	REVOLT MOTORS RV300	BUDGET ELECTRIC 2W	2
450	REVOLT MOTORS RV400	BUDGET ELECTRIC 2W	2
451	ROYAL ENFIELD  BULLET 350	PREMIUM BIKE	2
452	ROYAL ENFIELD  BULLET 500	PREMIUM BIKE	2
453	ROYAL ENFIELD  BULLET ELECTRA	PREMIUM BIKE	2
454	ROYAL ENFIELD  BULLET TRIALS 350	PREMIUM BIKE	2
455	ROYAL ENFIELD  BULLET TRIALS 500	PREMIUM BIKE	2
456	ROYAL ENFIELD  CLASSIC 350	PREMIUM BIKE	2
457	ROYAL ENFIELD  CLASSIC 500	PREMIUM BIKE	2
458	ROYAL ENFIELD  CLASSIC BATTLE GREEN	PREMIUM BIKE	2
459	ROYAL ENFIELD  CLASSIC CHROME	PREMIUM BIKE	2
460	ROYAL ENFIELD  CLASSIC DESERT STORM	PREMIUM BIKE	2
461	ROYAL ENFIELD  CONTINENTAL GT	PREMIUM BIKE	2
462	ROYAL ENFIELD  CONTINENTAL GT 650	PREMIUM BIKE	2
463	ROYAL ENFIELD  HIMALAYAN	PREMIUM BIKE	2
464	ROYAL ENFIELD  INTERCEPTOR 650	PREMIUM BIKE	2
465	ROYAL ENFIELD  METEOR	PREMIUM BIKE	2
466	ROYAL ENFIELD  NOT IN LIST	PREMIUM BIKE	2
467	ROYAL ENFIELD  THUNDERBIRD 350	PREMIUM BIKE	2
468	ROYAL ENFIELD  THUNDERBIRD 350X	PREMIUM BIKE	2
469	ROYAL ENFIELD  THUNDERBIRD 500	PREMIUM BIKE	2
470	ROYAL ENFIELD  THUNDERBIRD 500X	PREMIUM BIKE	2
471	ROYAL ENFIELD SCRAM 411	PREMIUM BIKE	2
472	ROYAL ENFIELD RUMBLER	PREMIUM BIKE	2
473	SUZUKI ACCESS 125	BUDGET SCOOTER	2
474	SUZUKI ACCESS 125 (SE)	BUDGET SCOOTER	2
475	SUZUKI BANDIT 1250SA	PREMIUM BIKE	2
476	SUZUKI BURGMAN STREET	BUDGET SCOOTER	2
477	SUZUKI DR-Z50	PREMIUM BIKE	2
478	SUZUKI GIXXER	PREMIUM BIKE	2
479	SUZUKI GIXXER 250	PREMIUM BIKE	2
480	SUZUKI GIXXER SF	PREMIUM BIKE	2
481	SUZUKI GIXXER SF 250	PREMIUM BIKE	2
482	SUZUKI GS150R	PREMIUM BIKE	2
483	SUZUKI GSX S 1000F	PREMIUM BIKE	2
484	SUZUKI GSX S1000	PREMIUM BIKE	2
485	SUZUKI GSX S750	PREMIUM BIKE	2
486	SUZUKI GSX-R1000	PREMIUM BIKE	2
487	SUZUKI HAYABUSA	PREMIUM BIKE	2
488	SUZUKI HAYABUSA Z	PREMIUM BIKE	2
489	SUZUKI HAYATE	BELOW 150CC BIKE	2
490	SUZUKI INTRUDER 150	151CC TO 350 CC BIKE 	2
491	SUZUKI INTRUDER M1800R	PREMIUM BIKE	2
492	SUZUKI INTRUDER M1800R (B.O.S.S.)	PREMIUM BIKE	2
493	SUZUKI INTRUDER M800	PREMIUM BIKE	2
494	SUZUKI LETS	BUDGET SCOOTER	2
495	SUZUKI NOT IN LIST	PREMIUM BIKE	2
496	SUZUKI RM Z250	PREMIUM BIKE	2
497	SUZUKI RM Z450	PREMIUM BIKE	2
498	SUZUKI SLINGSHOT PLUS	BELOW 150CC BIKE	2
499	SUZUKI SWISH 125	BUDGET SCOOTER	2
500	SUZUKI V-STROM SX	PREMIUM BIKE	2
501	SUZUKI V-STROM 1000	PREMIUM BIKE	2
502	SUZUKI V-STROM 650 XT	PREMIUM BIKE	2
503	SWM BIKES NOT IN LIST	PREMIUM BIKE	2
504	SWM BIKES SUPERDUAL T	PREMIUM BIKE	2
505	TORK  NOT IN LIST	PREMIUM BIKE	2
506	TORK  T6X	PREMIUM BIKE	2
507	TRIUMPH MOTORCYCLES BONNEVILLE	PREMIUM BIKE	2
508	TRIUMPH MOTORCYCLES BONNEVILLE BOBBER	PREMIUM BIKE	2
509	TRIUMPH MOTORCYCLES BONNEVILLE T100	PREMIUM BIKE	2
510	TRIUMPH MOTORCYCLES BONNEVILLE T120	PREMIUM BIKE	2
511	TRIUMPH MOTORCYCLES DAYTONA 675 ABS	PREMIUM BIKE	2
512	TRIUMPH MOTORCYCLES DAYTONA 675R	PREMIUM BIKE	2
513	TRIUMPH MOTORCYCLES NOT IN LIST	PREMIUM BIKE	2
514	TRIUMPH MOTORCYCLES ROCKET III  	PREMIUM BIKE	2
515	TRIUMPH MOTORCYCLES ROCKET III ROADSTER	PREMIUM BIKE	2
516	TRIUMPH MOTORCYCLES SPEED MASTER	PREMIUM BIKE	2
517	TRIUMPH MOTORCYCLES SPEED TRIPLE	PREMIUM BIKE	2
518	TRIUMPH MOTORCYCLES SPEED TRIPLE ABS	PREMIUM BIKE	2
519	TRIUMPH MOTORCYCLES STREET SCRAMBLER	PREMIUM BIKE	2
520	TRIUMPH MOTORCYCLES STREET TRIPLE  	PREMIUM BIKE	2
521	TRIUMPH MOTORCYCLES STREET TRIPLE ABS	PREMIUM BIKE	2
522	TRIUMPH MOTORCYCLES STREET TWIN	PREMIUM BIKE	2
523	TRIUMPH MOTORCYCLES THRUXTON R	PREMIUM BIKE	2
524	TRIUMPH MOTORCYCLES THUNDERBIRD	PREMIUM BIKE	2
525	TRIUMPH MOTORCYCLES THUNDERBIRD LT	PREMIUM BIKE	2
526	TRIUMPH MOTORCYCLES THUNDERBIRD STORM	PREMIUM BIKE	2
527	TRIUMPH MOTORCYCLES TIGER 1200	PREMIUM BIKE	2
528	TRIUMPH MOTORCYCLES TIGER 800  	PREMIUM BIKE	2
529	TRIUMPH MOTORCYCLES TIGER 800 XC	PREMIUM BIKE	2
530	TRIUMPH MOTORCYCLES TIGER 800 XR	PREMIUM BIKE	2
531	TRIUMPH MOTORCYCLES TIGER 800 XRX	PREMIUM BIKE	2
532	TRIUMPH MOTORCYCLES TIGER EXPLORER	PREMIUM BIKE	2
533	TRIUMPH MOTORCYCLES TIGER EXPLORER XC	PREMIUM BIKE	2
534	TRIUMPH MOTORCYCLES TIGER SPORT	PREMIUM BIKE	2
535	TVS APACHE 180	151CC TO 350 CC BIKE 	2
536	TVS APACHE 220	151CC TO 350 CC BIKE 	2
537	TVS APACHE 250	151CC TO 350 CC BIKE 	2
538	TVS APACHE RR 310	151CC TO 350 CC BIKE 	2
539	TVS APACHE RTR 	151CC TO 350 CC BIKE 	2
540	TVS APACHE RTR 160	151CC TO 350 CC BIKE 	2
541	TVS APACHE RTR 160 4V	151CC TO 350 CC BIKE 	2
542	TVS APACHE RTR 180	151CC TO 350 CC BIKE 	2
543	TVS APACHE RTR 200 4V RACE EDITION	151CC TO 350 CC BIKE 	2
544	TVS APACHE RTR 220	151CC TO 350 CC BIKE 	2
545	TVS APACHE RTR 300 FX	151CC TO 350 CC BIKE 	2
546	TVS CREON	BUDGET ELECTRIC 2W	2
547	TVS DRAKEN	PREMIUM BIKE	2
548	TVS FLAME	BELOW 150CC BIKE	2
549	TVS FLAME SR 125	BELOW 150CC BIKE	2
550	TVS GRAPHITE	BUDGET SCOOTER	2
551	TVS HLX 100	BELOW 150CC BIKE	2
552	TVS HLX 125	BELOW 150CC BIKE	2
553	TVS IQUBE	BUDGET ELECTRIC 2W	2
554	TVS JIVE	BELOW 150CC BIKE	2
555	TVS JUPITER	BUDGET SCOOTER	2
556	TVS JUPITER 125	BUDGET SCOOTER	2
557	TVS JUPITER GRANDE	BUDGET SCOOTER	2
558	TVS LX	BELOW 150CC BIKE	2
559	TVS MAX 100	BELOW 150CC BIKE	2
560	TVS MAX4R	BELOW 150CC BIKE	2
561	TVS METRO	BELOW 150CC BIKE	2
562	TVS NEO X31	BUDGET SCOOTER	2
563	TVS NOT IN LIST	PREMIUM BIKE	2
564	TVS NTORQ 125	BUDGET SCOOTER	2
565	TVS PHOENIX	BELOW 150CC BIKE	2
566	TVS RADEON	BELOW 150CC BIKE	2
567	TVS RAIDER	BELOW 150CC BIKE	2
568	TVS ROCKZ	BUDGET SCOOTER	2
569	TVS SCOOTY	BUDGET SCOOTER	2
570	TVS SCOOTY PEP	BUDGET SCOOTER	2
571	TVS SCOOTY PEP PLUS	BUDGET SCOOTER	2
572	TVS SCOOTY STREAK	BUDGET SCOOTER	2
573	TVS SCOOTY ZEST	BUDGET SCOOTER	2
574	TVS SCOOTY ZEST 110	BUDGET SCOOTER	2
575	TVS SPORT	BELOW 150CC BIKE	2
576	TVS STAR	BELOW 150CC BIKE	2
577	TVS STAR CITY	BELOW 150CC BIKE	2
578	TVS STAR CITY PLUS	BELOW 150CC BIKE	2
579	TVS STAR SPORT	BELOW 150CC BIKE	2
580	TVS VICTOR	BELOW 150CC BIKE	2
581	TVS WEGO	BUDGET SCOOTER	2
582	TVS XL100	BELOW 150CC BIKE	2
583	TVS ZEPPELIN	PREMIUM BIKE	2
584	ULTRAVIOLETTE F77	PREMIUM BIKE	2
585	ULTRAVIOLETTE NOT IN LIST	PREMIUM BIKE	2
586	UM NOT IN LIST	PREMIUM BIKE	2
587	UM RENEGADE COMMANDO	PREMIUM BIKE	2
588	UM RENEGADE COMMANDO CLASSIC	PREMIUM BIKE	2
589	UM RENEGADE COMMANDO MOJAVE	PREMIUM BIKE	2
590	UM RENEGADE SPORTS S	PREMIUM BIKE	2
591	VESPA ELEGANTE	BUDGET SCOOTER	2
592	VESPA ELEGANTE 150	BUDGET SCOOTER	2
593	VESPA ELETTRICA	BUDGET ELECTRIC 2W	2
594	VESPA GTS SUPER 125	BUDGET SCOOTER	2
595	VESPA LIBERTY 3V	BUDGET SCOOTER	2
596	VESPA LX 125	BUDGET SCOOTER	2
597	VESPA NOT IN LIST	BUDGET SCOOTER	2
598	VESPA RED 125	BUDGET SCOOTER	2
599	VESPA S	BUDGET SCOOTER	2
600	VESPA SXL 125	BUDGET SCOOTER	2
601	VESPA SXL 150	BUDGET SCOOTER	2
602	VESPA VESPA NOTTE 125	BUDGET SCOOTER	2
603	VESPA VX	BUDGET SCOOTER	2
604	VESPA VXL 125	BUDGET SCOOTER	2
605	VESPA VXL 150	BUDGET SCOOTER	2
606	YAMAHA AEROX 155	BUDGET SCOOTER	2
607	YAMAHA ALPHA	BUDGET SCOOTER	2
608	YAMAHA CRUX	BELOW 150CC BIKE	2
609	YAMAHA FASCINO	BUDGET SCOOTER	2
610	YAMAHA FAZER 25	PREMIUM BIKE	2
611	YAMAHA FAZER FI	BELOW 150CC BIKE	2
612	YAMAHA FZ	151CC TO 350 CC BIKE 	2
613	YAMAHA FZ 1	PREMIUM BIKE	2
614	YAMAHA FZ 25	PREMIUM BIKE	2
615	YAMAHA FZ FI	BELOW 150CC BIKE	2
616	YAMAHA FZ S FI	BELOW 150CC BIKE	2
617	YAMAHA FZS 	151CC TO 350 CC BIKE 	2
618	YAMAHA FZS 25	151CC TO 350 CC BIKE 	2
619	YAMAHA FZX	151CC TO 350 CC BIKE 	2
620	YAMAHA MT 03	PREMIUM BIKE	2
621	YAMAHA MT 09	PREMIUM BIKE	2
622	YAMAHA MT 15	PREMIUM BIKE	2
623	YAMAHA MT 15 CYW	PREMIUM BIKE	2
624	YAMAHA MTO GP EDITION	PREMIUM BIKE	2
625	YAMAHA N MAX 155	PREMIUM BIKE	2
626	YAMAHA NOT IN LIST	PREMIUM BIKE	2
627	YAMAHA R15 M	PREMIUM BIKE	2
628	YAMAHA R15 V4	PREMIUM BIKE	2
629	YAMAHA RAY	BUDGET SCOOTER	2
630	YAMAHA RAY ZR	BUDGET SCOOTER	2
631	YAMAHA RAY-Z	BUDGET SCOOTER	2
632	YAMAHA RX 100	BELOW 150CC BIKE	2
633	YAMAHA RX 135	BELOW 150CC BIKE	2
634	YAMAHA SALUTO	BELOW 150CC BIKE	2
635	YAMAHA SALUTO RX	BELOW 150CC BIKE	2
636	YAMAHA SS 125	BELOW 150CC BIKE	2
637	YAMAHA SZ-RR 	BELOW 150CC BIKE	2
638	YAMAHA SZ-RR BLUE CORE	BELOW 150CC BIKE	2
639	YAMAHA SZ-S	BELOW 150CC BIKE	2
640	YAMAHA VMAX (1679CC) 	PREMIUM BIKE	2
641	YAMAHA YBR 110	BELOW 150CC BIKE	2
642	YAMAHA YBR 125	BELOW 150CC BIKE	2
643	YAMAHA YZF R1	PREMIUM BIKE	2
644	YAMAHA YZF R15	PREMIUM BIKE	2
645	YAMAHA YZF R15 V3	PREMIUM BIKE	2
646	YAMAHA YZF R15S	PREMIUM BIKE	2
647	YAMAHA YZF R1M	PREMIUM BIKE	2
648	YAMAHA YZF R3	PREMIUM BIKE	2
649	OLA ELECTRIC	BUDGET ELECTRIC 2W	2
650	YAMAHA ROYAL STAR	351CC TO 500 CC BIKE	2
651	HERO VIDA	BUDGET ELECTRIC 2W	2
652	HONDA HNESS	151CC TO 350 CC BIKE 	2
653	YEZDI ROADSTER	351CC TO 500 CC BIKE	2
654	YEZDI SCRAMBLER	351CC TO 500 CC BIKE	2
655	YEZDI ADVENTURE	351CC TO 500 CC BIKE	2
656	TVS RONIN 225	151CC TO 350 CC BIKE 	2
657	PURE EV ENTRANCE NEO	BUDGET ELECTRIC 2W	2
658	PURE EV EPLUTO 7G	PREMIUM ELECTRIC 2W	2
659	PURE EV ETRYST 350	PREMIUM ELECTRIC 2W	2
660	BOUNCE INFINITY E1	BUDGET ELECTRIC 2W	2
661	ASTON MARTIN DB11	SIMPLY PREMIUM	4
662	ASTON MARTIN NOT IN LIST	SIMPLY PREMIUM	4
663	ASTON MARTIN VANQUISH	SIMPLY PREMIUM	4
664	ASTON MARTIN VANTAGE	SIMPLY PREMIUM	4
665	AUDI A3	LUXURY	4
666	AUDI A3 CABRIOLET	LUXURY	4
667	AUDI A4	LUXURY	4
668	AUDI A5	LUXURY	4
669	AUDI A5 CABRIOLET	LUXURY	4
670	AUDI A6	LUXURY	4
671	AUDI A8	SIMPLY PREMIUM	4
672	AUDI A8-L	SIMPLY PREMIUM	4
673	AUDI E-TRON	ELECTRIC PREMIUM	4
674	AUDI NOT IN LIST	LUXURY	4
675	AUDI Q2	LUXURY	4
676	AUDI Q3	LUXURY	4
677	AUDI Q5	LUXURY	4
678	AUDI Q7	LUXURY	4
679	AUDI Q8	LUXURY	4
680	AUDI R8	SIMPLY PREMIUM	4
681	AUDI RS 5	LUXURY	4
682	AUDI RS6	SIMPLY PREMIUM	4
683	AUDI RS7	SIMPLY PREMIUM	4
684	AUDI S5	SIMPLY PREMIUM	4
685	AUDI TT	SIMPLY PREMIUM	4
686	BAJAJ QUTE RE60	HATCHBACK	4
687	BENTLEY ARNAGE 	SIMPLY PREMIUM	4
688	BENTLEY BENTAYGA	SIMPLY PREMIUM	4
689	BENTLEY CONTINENTAL	SIMPLY PREMIUM	4
690	BENTLEY CONTINENTAL GT	SIMPLY PREMIUM	4
691	BENTLEY FLYING SPUR	SIMPLY PREMIUM	4
692	BENTLEY MULSANNE	SIMPLY PREMIUM	4
693	BENTLEY NEW FLYING SPUR V8	SIMPLY PREMIUM	4
694	BENTLEY NOT IN LIST	SIMPLY PREMIUM	4
695	BIRD ELECTRIC EV1	ELECTRIC BUDGET	4
696	BMW  1 SERIES 5-DOOR	LUXURY	4
697	BMW  3 SERIES	LUXURY	4
698	BMW  3 SERIES GT	LUXURY	4
699	BMW  5 SERIES	SIMPLY PREMIUM	4
700	BMW  6 SERIES	SIMPLY PREMIUM	4
701	BMW  7 SERIES	SIMPLY PREMIUM	4
702	BMW  8 SERIES	SIMPLY PREMIUM	4
703	BMW  ACTIVEHYBRID 7	SIMPLY PREMIUM	4
704	BMW  I3S	ELECTRIC PREMIUM	4
705	BMW  I8	ELECTRIC PREMIUM	4
706	BMW  M SERIES	SIMPLY PREMIUM	4
707	BMW  M2	SIMPLY PREMIUM	4
708	BMW  M3	SIMPLY PREMIUM	4
709	BMW  M4	SIMPLY PREMIUM	4
710	BMW  M4 COUPE	SIMPLY PREMIUM	4
711	BMW  M5	SIMPLY PREMIUM	4
712	BMW  M6 GRAN COUPE	SIMPLY PREMIUM	4
713	BMW  NOT IN LIST	SIMPLY PREMIUM	4
714	BMW  X1	PREMIUM SUV	4
715	BMW  X3	PREMIUM SUV	4
716	BMW  X4	PREMIUM SUV	4
717	BMW  X5	PREMIUM SUV	4
718	BMW  X7	PREMIUM SUV	4
719	BMW  Z 4	PREMIUM SUV	4
720	BUGATTI DIVO	SIMPLY PREMIUM	4
721	BUGATTI GRAND PRIX	SIMPLY PREMIUM	4
722	BUGATTI NOT IN LIST	SIMPLY PREMIUM	4
723	BUGATTI VEYRON	SIMPLY PREMIUM	4
724	CHEVROLET AVEO	HATCHBACK	4
725	CHEVROLET AVEO U-VA	HATCHBACK	4
726	CHEVROLET BEAT	HATCHBACK	4
727	CHEVROLET CAPTIVA	SUV	4
728	CHEVROLET CRUZE	LUXURY	4
729	CHEVROLET ENJOY	SUV	4
730	CHEVROLET NOT IN LIST	LUXURY	4
731	CHEVROLET OPTRA	SEDAN	4
732	CHEVROLET SAIL	SEDAN	4
733	CHEVROLET SAIL HATCHBACK	HATCHBACK	4
734	CHEVROLET SPARK	HATCHBACK	4
735	CHEVROLET TAVERA	SUV	4
736	CITROEN C5 AIRCROSS	SUV	4
737	CITROEN NEW C3	HATCHBACK	4
738	CITROEN NEW C5 AIRCROSS SUV	SUV	4
739	CITROEN NOT IN LIST	LUXURY	4
740	DATSUN GO	HATCHBACK	4
741	DATSUN GO CROSS	HATCHBACK	4
742	DATSUN GO PLUS	HATCHBACK	4
743	DATSUN NOT IN LIST	LUXURY	4
744	DATSUN REDI-GO	HATCHBACK	4
745	DC CARS AVANTI	SIMPLY PREMIUM	4
746	DC CARS NOT IN LIST	SIMPLY PREMIUM	4
747	FERRARI 458	SIMPLY PREMIUM	4
748	FERRARI 458 SPECIALE	SIMPLY PREMIUM	4
749	FERRARI 488	SIMPLY PREMIUM	4
750	FERRARI 488 GTB	SIMPLY PREMIUM	4
751	FERRARI 812 SUPER FAST	SIMPLY PREMIUM	4
752	FERRARI 812 SUPERFAST	SIMPLY PREMIUM	4
753	FERRARI CALIFORNIA  T	SIMPLY PREMIUM	4
754	FERRARI FF	SIMPLY PREMIUM	4
755	FERRARI GTC4LUSSO	SIMPLY PREMIUM	4
756	FERRARI NOT IN LIST	SIMPLY PREMIUM	4
757	FERRARI PORTOFINO	SIMPLY PREMIUM	4
758	FIAT ABARTH 595	HATCHBACK	4
759	FIAT ABARTH AVVENTURA	HATCHBACK	4
760	FIAT ABARTH PUNTO	HATCHBACK	4
761	FIAT AVVENTURA	HATCHBACK	4
762	FIAT AVVENTURA URBAN CROSS	HATCHBACK	4
763	FIAT LINEA	SEDAN	4
764	FIAT LINEA 125S	SEDAN	4
765	FIAT NOT IN LIST	LUXURY	4
766	FIAT PUNTO EVO	HATCHBACK	4
767	FIAT PUNTO PURE	HATCHBACK	4
768	FIAT URBAN CROSS	HATCHBACK	4
769	FORCE GURKHA	SUV	4
770	FORCE NOT IN LIST	LUXURY	4
771	FORCE ONE	SUV	4
772	FORD ASPIRE	SEDAN	4
773	FORD CLASSIC	SEDAN	4
774	FORD ECOSPORT	SUV	4
775	FORD ENDEAVOUR	PREMIUM SUV	4
776	FORD FIESTA	SEDAN	4
777	FORD FIGO	HATCHBACK	4
778	FORD FOCUS	HATCHBACK	4
779	FORD FREESTYLE	SEDAN	4
780	FORD IKON	SEDAN	4
781	FORD MUSTANG	SIMPLY PREMIUM	4
782	FORD NOT IN LIST	LUXURY	4
783	GREAT WALL MOTOR F7	SIMPLY PREMIUM	4
784	GREAT WALL MOTOR HAVAL F5	SIMPLY PREMIUM	4
785	GREAT WALL MOTOR HAVAL F7X	SIMPLY PREMIUM	4
786	GREAT WALL MOTOR NOT IN LIST	SIMPLY PREMIUM	4
787	GREAT WALL MOTOR R1	ELECTRIC BUDGET	4
788	HINDUSTAN MOTORS AMBASSADOR	SEDAN	4
789	HINDUSTAN MOTORS NOT IN LIST	SEDAN	4
790	HONDA ACCORD	SEDAN	4
791	HONDA AMAZE	HATCHBACK	4
792	HONDA BRIO	HATCHBACK	4
793	HONDA BRV	HATCHBACK	4
794	HONDA CITY	SEDAN	4
795	HONDA CIVIC	SEDAN	4
796	HONDA CR-V	PREMIUM SUV	4
797	HONDA JAZZ	HATCHBACK	4
798	HONDA MOBILIO	SUV	4
799	HONDA WRV	SUV	4
800	HYUNDAI ACCENT	SEDAN	4
801	HYUNDAI ALCAZAR	SUV	4
802	HYUNDAI AURA	SEDAN	4
803	HYUNDAI CRETA	SUV	4
804	HYUNDAI ELANTRA	SEDAN	4
805	HYUNDAI ELITE I20	SEDAN	4
806	HYUNDAI EON	HATCHBACK	4
807	HYUNDAI FLUIDIC I20	SEDAN	4
808	HYUNDAI GRAND I10	HATCHBACK	4
809	HYUNDAI GRAND I10 NIOS	HATCHBACK	4
810	HYUNDAI I10	HATCHBACK	4
811	HYUNDAI I20	SEDAN	4
812	HYUNDAI I20 N LINE	SEDAN	4
813	HYUNDAI I30	SEDAN	4
814	HYUNDAI IONIQ	ELECTRIC BUDGET	4
815	HYUNDAI KONA	ELECTRIC PREMIUM	4
816	HYUNDAI NEO FLUIDIC ELANTRA	SEDAN	4
817	HYUNDAI NEXO	ELECTRIC PREMIUM	4
818	HYUNDAI NOT IN LIST	LUXURY	4
819	HYUNDAI SANTA FE	PREMIUM SUV	4
820	HYUNDAI SANTRO	HATCHBACK	4
821	HYUNDAI SANTRO XING	HATCHBACK	4
822	HYUNDAI SONATA	SEDAN	4
823	HYUNDAI TUCSON	PREMIUM SUV	4
824	HYUNDAI VENUE	SUV	4
825	HYUNDAI VERNA	SEDAN	4
826	HYUNDAI XCENT	SEDAN	4
827	HYUNDAI XCENT PRIME	SEDAN	4
828	ISUZU D-MAX V-CROSS	PREMIUM SUV	4
829	ISUZU MU7	PREMIUM SUV	4
830	ISUZU MUX	PREMIUM SUV	4
831	ISUZU NOT IN LIST	PREMIUM SUV	4
832	JAGUAR EPACE	SIMPLY PREMIUM	4
833	JAGUAR F-PACE	SIMPLY PREMIUM	4
834	JAGUAR F-TYPE	SIMPLY PREMIUM	4
835	JAGUAR NOT IN LIST	SIMPLY PREMIUM	4
836	JAGUAR XE	SIMPLY PREMIUM	4
837	JAGUAR XF	SIMPLY PREMIUM	4
838	JAGUAR XJ	SIMPLY PREMIUM	4
839	JEEP COMPASS	PREMIUM SUV	4
840	JEEP GRAND CHEROKEE	PREMIUM SUV	4
841	JEEP NOT IN LIST	PREMIUM SUV	4
842	JEEP WRANGLER UNLIMITED	PREMIUM SUV	4
843	KIA CARNIVAL	PREMIUM SUV	4
844	KIA CEED	HATCHBACK	4
845	KIA K900	SIMPLY PREMIUM	4
846	KIA NOT IN LIST	SIMPLY PREMIUM	4
847	KIA PICANTO	HATCHBACK	4
848	KIA RIO	SEDAN	4
849	KIA SELTOS	SUV	4
850	KIA SONET	SUV	4
851	KIA SOUL EV	ELECTRIC BUDGET	4
852	KIA SPORTAGE	PREMIUM SUV	4
853	KIA STINGER	SIMPLY PREMIUM	4
854	LAMBORGHINI AVENTADOR	SIMPLY PREMIUM	4
855	LAMBORGHINI GALLARDO	SIMPLY PREMIUM	4
856	LAMBORGHINI HURACAN	SIMPLY PREMIUM	4
857	LAMBORGHINI HURACAN EVO	SIMPLY PREMIUM	4
858	LAMBORGHINI MURCIELAGO	SIMPLY PREMIUM	4
859	LAMBORGHINI NOT IN LIST	SIMPLY PREMIUM	4
860	LAMBORGHINI URUS	SIMPLY PREMIUM	4
861	LAND ROVER DISCOVERY	PREMIUM SUV	4
862	LAND ROVER DISCOVERY SPORT	PREMIUM SUV	4
863	LAND ROVER FREELANDER	PREMIUM SUV	4
864	LAND ROVER NOT IN LIST	PREMIUM SUV	4
865	RANGE ROVER	PREMIUM SUV	4
866	LAND ROVER RANGE ROVER EVOQUE	PREMIUM SUV	4
867	LAND ROVER RANGE ROVER SPORT	PREMIUM SUV	4
868	LAND ROVER RANGE ROVER VELAR	PREMIUM SUV	4
869	LEXUS ES	SIMPLY PREMIUM	4
870	LEXUS LC	SIMPLY PREMIUM	4
871	LEXUS LS	SIMPLY PREMIUM	4
872	LEXUS LX	SIMPLY PREMIUM	4
873	LEXUS NOT IN LIST	SIMPLY PREMIUM	4
874	LEXUS NX	SIMPLY PREMIUM	4
875	LEXUS RC	SIMPLY PREMIUM	4
876	LEXUS RX	SIMPLY PREMIUM	4
877	MAHINDRA ALTURAS G4	PREMIUM SUV	4
878	MAHINDRA ATOM	ELECTRIC BUDGET	4
879	MAHINDRA BOLERO	SUV	4
880	MAHINDRA BOLERO POWER PLUS	SUV	4
881	MAHINDRA E VERITO	ELECTRIC BUDGET	4
882	MAHINDRA E2O	ELECTRIC BUDGET	4
883	MAHINDRA E2O PLUS	ELECTRIC BUDGET	4
884	MAHINDRA KUV100 NXT	SUV	4
885	MAHINDRA MARAZZO	SUV	4
886	MAHINDRA NUVOSPORT	SUV	4
887	MAHINDRA QUANTO	SUV	4
888	MAHINDRA REVA	ELECTRIC BUDGET	4
889	MAHINDRA REXTON	PREMIUM SUV	4
890	MAHINDRA SCORPIO	SUV	4
891	MAHINDRA SCORPIO GETAWAY	SUV	4
892	MAHINDRA SUPRO	HATCHBACK	4
893	MAHINDRA THAR	SUV	4
894	MAHINDRA TUV 300	SUV	4
895	MAHINDRA TUV 300 PLUS	SUV	4
896	MAHINDRA VERITO	SEDAN	4
897	MAHINDRA VERITO VIBE	SEDAN	4
898	MAHINDRA VERITO VIBE CS	SEDAN	4
899	MAHINDRA XUV 300	SUV	4
900	MAHINDRA XUV 500	SUV	4
901	MAHINDRA XUV 700	SUV	4
902	MAHINDRA XYLO	SUV	4
903	MARUTI SUZUKI 800	HATCHBACK	4
904	MARUTI SUZUKI ALTO 	HATCHBACK	4
905	MARUTI SUZUKI ALTO 800	HATCHBACK	4
906	MARUTI SUZUKI ALTO K10	HATCHBACK	4
907	MARUTI SUZUKI A-STAR	HATCHBACK	4
908	MARUTI SUZUKI BALENO	SEDAN	4
909	MARUTI SUZUKI BALENO RS	SEDAN	4
910	MARUTI SUZUKI CELERIO	HATCHBACK	4
911	MARUTI SUZUKI CELERIO X	HATCHBACK	4
912	MARUTI SUZUKI CIAZ	LUXURY	4
913	MARUTI SUZUKI DZIRE	SEDAN	4
914	MARUTI SUZUKI EECO	SUV	4
915	MARUTI SUZUKI ERTIGA	SUV	4
916	MARUTI SUZUKI GRAND VITARA	PREMIUM SUV	4
917	MARUTI SUZUKI GYPSY	SUV	4
918	MARUTI SUZUKI IGNIS	HATCHBACK	4
919	MARUTI SUZUKI JIMNY	SUV	4
920	MARUTI SUZUKI NOT IN LIST	LUXURY	4
921	MARUTI SUZUKI OMNI	SEDAN	4
922	MARUTI SUZUKI RITZ	HATCHBACK	4
923	MARUTI SUZUKI S-CROSS	SUV	4
924	MARUTI SUZUKI S-PRESSO	SUV	4
925	MARUTI SUZUKI STINGRAY	HATCHBACK	4
926	MARUTI SUZUKI SWIFT	HATCHBACK	4
927	MARUTI SUZUKI SX4	SEDAN	4
928	MARUTI SUZUKI VITARA BREZZA	SEDAN	4
929	MARUTI SUZUKI WAGON R	HATCHBACK	4
930	MARUTI SUZUKI XL6	SUV	4
931	MARUTI SUZUKI ZEN	HATCHBACK	4
932	MASERATI GHIBLI	SIMPLY PREMIUM	4
933	MASERATI GRAN CABRIO	SIMPLY PREMIUM	4
934	MASERATI GRAN TURISMO	SIMPLY PREMIUM	4
935	MASERATI LEVANTE	SIMPLY PREMIUM	4
936	MASERATI NOT IN LIST	SIMPLY PREMIUM	4
937	MASERATI QUATTROPORTE	SIMPLY PREMIUM	4
938	MERCEDES BENZ A-CLASS	LUXURY	4
939	MERCEDES BENZ AMG GT	SIMPLY PREMIUM	4
940	MERCEDES BENZ B-CLASS  	SIMPLY PREMIUM	4
941	MERCEDES BENZ B-CLASS LUXURY TOURER	SIMPLY PREMIUM	4
942	MERCEDES BENZ C43	SIMPLY PREMIUM	4
943	MERCEDES BENZ C63 AMG	SIMPLY PREMIUM	4
944	MERCEDES BENZ C-CLASS	SIMPLY PREMIUM	4
945	MERCEDES BENZ CLA  	LUXURY	4
946	MERCEDES BENZ CLA-CLASS	LUXURY	4
947	MERCEDES BENZ CLC COUPE	SIMPLY PREMIUM	4
948	MERCEDES BENZ CLS	SIMPLY PREMIUM	4
949	MERCEDES BENZ E63 AMG	SIMPLY PREMIUM	4
950	MERCEDES BENZ E-CLASS  	LUXURY	4
951	MERCEDES BENZ E-CLASS ALL-TERRAIN	LUXURY	4
952	MERCEDES BENZ G-CLASS	PREMIUM SUV	4
953	MERCEDES BENZ GLA 45 AMG	PREMIUM SUV	4
954	MERCEDES BENZ GLA-CLASS	PREMIUM SUV	4
955	MERCEDES BENZ GLC	PREMIUM SUV	4
956	MERCEDES BENZ GLE	PREMIUM SUV	4
957	MERCEDES BENZ GLE COUPE	PREMIUM SUV	4
958	MERCEDES BENZ GLS	PREMIUM SUV	4
959	MERCEDES BENZ MAYBACH	SIMPLY PREMIUM	4
960	MERCEDES BENZ M-CLASS	PREMIUM SUV	4
961	MERCEDES BENZ NOT IN LIST	SIMPLY PREMIUM	4
962	MERCEDES BENZ S COUPE	SIMPLY PREMIUM	4
963	MERCEDES BENZ S600	SIMPLY PREMIUM	4
964	MERCEDES BENZ S63 AMG	SIMPLY PREMIUM	4
965	MERCEDES BENZ S-CLASS 	LUXURY	4
966	MERCEDES BENZ SLC	SIMPLY PREMIUM	4
967	MERCEDES BENZ SLK-CLASS ROADSTER	LUXURY	4
968	MERCEDES BENZ V-CLASS	PREMIUM SUV	4
969	MG ASTER	SUV	4
970	MG GLOSTER	PREMIUM SUV	4
971	MG HECTOR	SUV	4
972	MG HECTOR PLUS	SUV	4
973	MG MARVEL X	PREMIUM SUV	4
974	MG MG3	HATCHBACK	4
975	MG MG6	SEDAN	4
976	MG NOT IN LIST	LUXURY	4
977	MG RC6	SEDAN	4
978	MG ZS EV	SIMPLY PREMIUM	4
979	MINI CARS CLUBMAN	SIMPLY PREMIUM	4
980	MINI CARS COOPER	SIMPLY PREMIUM	4
981	MINI CARS COOPER D	SIMPLY PREMIUM	4
982	MINI CARS COOPER S	SIMPLY PREMIUM	4
983	MINI CARS COUNTRYMAN	SIMPLY PREMIUM	4
984	MINI CARS NOT IN LIST	SIMPLY PREMIUM	4
985	MITSUBISHI LANCER	SEDAN	4
986	MITSUBISHI LANCER EVOLUTION	ELECTRIC PREMIUM	4
987	MITSUBISHI MONTERO	PREMIUM SUV	4
988	MITSUBISHI NOT IN LIST	ELECTRIC PREMIUM	4
989	MITSUBISHI OUTLANDER	PREMIUM SUV	4
990	MITSUBISHI PAJERO	PREMIUM SUV	4
991	MITSUBISHI PAJERO SPORT	PREMIUM SUV	4
992	NISSAN EVALIA	SUV	4
993	NISSAN GT-R	SIMPLY PREMIUM	4
994	NISSAN KICKS	SUV	4
995	NISSAN LEAF	HATCHBACK	4
996	NISSAN MAGNITE	SUV	4
997	NISSAN MICRA	HATCHBACK	4
998	NISSAN MICRA ACTIVE	HATCHBACK	4
999	NISSAN NOT IN LIST	LUXURY	4
1000	NISSAN SUNNY	LUXURY	4
1001	NISSAN TERRANO	SUV	4
1002	NISSAN X-TRAIL	SUV	4
1003	PORSCHE 718	SIMPLY PREMIUM	4
1004	PORSCHE 911	SIMPLY PREMIUM	4
1005	PORSCHE BOXSTER	SIMPLY PREMIUM	4
1006	PORSCHE CAYENNE	SIMPLY PREMIUM	4
1007	PORSCHE CAYMAN	SIMPLY PREMIUM	4
1008	PORSCHE MACAN	SIMPLY PREMIUM	4
1009	PORSCHE NOT IN LIST	SIMPLY PREMIUM	4
1010	PORSCHE PANAMERA	SIMPLY PREMIUM	4
1011	PREMIER NOT IN LIST	LUXURY	4
1012	PREMIER RIO	HATCHBACK	4
1013	RENAULT CAPTUR	SUV	4
1014	RENAULT DUSTER	SUV	4
1015	RENAULT FLUENCE	SEDAN	4
1016	RENAULT KIGER	SUV	4
1017	RENAULT KOLEOS	PREMIUM SUV	4
1018	RENAULT KWID	HATCHBACK	4
1019	RENAULT KWID EV	ELECTRIC BUDGET	4
1020	RENAULT LODGY	SUV	4
1021	RENAULT LOGAN	SEDAN	4
1022	RENAULT NOT IN LIST	LUXURY	4
1023	RENAULT PULSE	HATCHBACK	4
1024	RENAULT SCALA	SEDAN	4
1025	RENAULT TRIBER	SUV	4
1026	ROLLS ROYCE CULLINAN	SIMPLY PREMIUM	4
1027	ROLLS ROYCE DAWN	SIMPLY PREMIUM	4
1028	ROLLS ROYCE DROPHEAD COUPE 	SIMPLY PREMIUM	4
1029	ROLLS ROYCE GHOST	SIMPLY PREMIUM	4
1030	ROLLS ROYCE NOT IN LIST	SIMPLY PREMIUM	4
1031	ROLLS ROYCE PHANTOM	SIMPLY PREMIUM	4
1032	ROLLS ROYCE WRAITH	SIMPLY PREMIUM	4
1033	SKODA KODIAQ	PREMIUM SUV	4
1034	SKODA KUSHAQ	SUV	4
1035	SKODA LAURA	SEDAN	4
1036	SKODA NEW OCTAVIA	SEDAN	4
1037	SKODA NEW SUPERB	SEDAN	4
1038	SKODA NOT IN LIST	LUXURY	4
1039	SKODA OCTAVIA	SEDAN	4
1040	SKODA RAPID	SEDAN	4
1041	SKODA SUPERB	SEDAN	4
1042	SKODA YETI	PREMIUM SUV	4
1043	SKODA FABIA	SEDAN	4
1044	SSANGYONG NOT IN LIST	PREMIUM SUV	4
1045	SSANGYONG REXTON	PREMIUM SUV	4
1046	SSANGYONG TIVOLI	PREMIUM SUV	4
1047	TATA MOTORS ALTROZ	HATCHBACK	4
1048	TATA MOTORS ALTROZ EV	ELECTRIC BUDGET	4
1049	TATA MOTORS ARIA	SUV	4
1050	TATA MOTORS BOLT	HATCHBACK	4
1051	TATA MOTORS HARRIER	PREMIUM SUV	4
1052	TATA MOTORS HEXA	SUV	4
1053	TATA MOTORS INDICA	HATCHBACK	4
1054	TATA MOTORS INDICA EV2	ELECTRIC BUDGET	4
1055	TATA MOTORS INDIGO	SEDAN	4
1056	TATA MOTORS INDIGO ECS	ELECTRIC BUDGET	4
1057	TATA MOTORS MANZA	SEDAN	4
1058	TATA MOTORS MOVUS	SUV	4
1059	TATA MOTORS NANO	HATCHBACK	4
1060	TATA MOTORS NANO GENX	HATCHBACK	4
1061	TATA MOTORS NEXON	SUV	4
1062	TATA MOTORS NOT IN LIST	LUXURY	4
1063	TATA MOTORS SAFARI DICOR	PREMIUM SUV	4
1064	TATA MOTORS SAFARI GRAVITAS	PREMIUM SUV	4
1065	TATA MOTORS SAFARI STORME	PREMIUM SUV	4
1066	TATA MOTORS SUMO	SUV	4
1067	TATA MOTORS SUMO GOLD	SUV	4
1068	TATA MOTORS TIAGO	HATCHBACK	4
1069	TATA MOTORS TIAGO JTP	HATCHBACK	4
1070	TATA MOTORS TIAGO NRG	HATCHBACK	4
1071	TATA MOTORS TIGOR	SEDAN	4
1072	TATA MOTORS TIGOR EV	ELECTRIC BUDGET	4
1073	TATA MOTORS TIGOR JTP	SEDAN	4
1074	TATA MOTORS VENTURE	SEDAN	4
1075	TATA MOTORS VISTA	HATCHBACK	4
1076	TATA MOTORS WINGER	PREMIUM SUV	4
1077	TATA MOTORS XENON XT	SUV	4
1078	TATA MOTORS ZEST	SEDAN	4
1079	TATA PUNCH	SUV	4
1080	TESLA MODEL S	ELECTRIC PREMIUM	4
1081	TESLA MODEL X	ELECTRIC PREMIUM	4
1082	TESLA NOT IN LIST	ELECTRIC PREMIUM	4
1083	TOYOTA CAMRY	LUXURY	4
1084	TOYOTA CAMRY HYBRID	LUXURY	4
1085	TOYOTA COROLLA ALTIS	LUXURY	4
1086	TOYOTA ETIOS	SEDAN	4
1087	TOYOTA ETIOS CROSS	SEDAN	4
1088	TOYOTA ETIOS LIVA	SEDAN	4
1089	TOYOTA FORTUNER	PREMIUM SUV	4
1090	TOYOTA GLANZA	SEDAN	4
1091	TOYOTA INNOVA	PREMIUM SUV	4
1092	TOYOTA INNOVA CRYSTA	PREMIUM SUV	4
1093	TOYOTA LAND CRUISER	PREMIUM SUV	4
1094	TOYOTA LAND CRUISER 200	PREMIUM SUV	4
1095	TOYOTA LAND CRUISER PRADO	PREMIUM SUV	4
1096	TOYOTA NOT IN LIST	LUXURY	4
1097	TOYOTA PLATINUM ETIOS	SEDAN	4
1098	TOYOTA PRIUS	SIMPLY PREMIUM	4
1099	TOYOTA URBAN CRUISER	SUV	4
1100	TOYOTA VELLFIRE	PREMIUM SUV	4
1101	TOYOTA YARIS	SEDAN	4
1102	VOLKSWAGEN AMEO	SEDAN	4
1103	VOLKSWAGEN CROSS POLO	SEDAN	4
1104	VOLKSWAGEN GTI	SEDAN	4
1105	VOLKSWAGEN JETTA	LUXURY	4
1106	VOLKSWAGEN NOT IN LIST	LUXURY	4
1107	VOLKSWAGEN PASSAT	LUXURY	4
1108	VOLKSWAGEN POLO	SEDAN	4
1109	VOLKSWAGEN POLO GT	SEDAN	4
1110	VOLKSWAGEN TAIGUN	SEDAN	4
1111	VOLKSWAGEN TCROSS	SEDAN	4
1112	VOLKSWAGEN TIGUAN	SEDAN	4
1113	VOLKSWAGEN TROC	PREMIUM SUV	4
1114	VOLKSWAGEN VENTO	LUXURY	4
1115	VOLKSWAGEN VIRTUS	LUXURY	4
1116	VOLVO C70	PREMIUM SUV	4
1117	VOLVO NOT IN LIST	PREMIUM SUV	4
1118	VOLVO S60	PREMIUM SUV	4
1119	VOLVO S60 CROSS COUNTRY	PREMIUM SUV	4
1120	VOLVO S80	PREMIUM SUV	4
1121	VOLVO S90	PREMIUM SUV	4
1122	VOLVO V40	PREMIUM SUV	4
1123	VOLVO V40 CROSS COUNTRY	PREMIUM SUV	4
1124	VOLVO V90 CROSS COUNTRY	PREMIUM SUV	4
1125	VOLVO XC40	PREMIUM SUV	4
1126	VOLVO XC60	PREMIUM SUV	4
1127	VOLVO XC90	PREMIUM SUV	4
1128	HYUNDAI GETZ	HATCHBACK	4
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add accounts	7	add_accounts
26	Can change accounts	7	change_accounts
27	Can delete accounts	7	delete_accounts
28	Can view accounts	7	view_accounts
29	Can add account types	8	add_accounttypes
30	Can change account types	8	change_accounttypes
31	Can delete account types	8	delete_accounttypes
32	Can view account types	8	view_accounttypes
33	Can add cases	9	add_cases
34	Can change cases	9	change_cases
35	Can delete cases	9	delete_cases
36	Can view cases	9	view_cases
37	Can add company	10	add_company
38	Can change company	10	change_company
39	Can delete company	10	delete_company
40	Can view company	10	view_company
41	Can add customers	11	add_customers
42	Can change customers	11	change_customers
43	Can delete customers	11	delete_customers
44	Can view customers	11	view_customers
45	Can add dispatch entry	12	add_dispatchentry
46	Can change dispatch entry	12	change_dispatchentry
47	Can delete dispatch entry	12	delete_dispatchentry
48	Can view dispatch entry	12	view_dispatchentry
49	Can add dispatch status	13	add_dispatchstatus
50	Can change dispatch status	13	change_dispatchstatus
51	Can delete dispatch status	13	delete_dispatchstatus
52	Can view dispatch status	13	view_dispatchstatus
53	Can add features	14	add_features
54	Can change features	14	change_features
55	Can delete features	14	delete_features
56	Can view features	14	view_features
57	Can add invoices	15	add_invoices
58	Can change invoices	15	change_invoices
59	Can delete invoices	15	delete_invoices
60	Can view invoices	15	view_invoices
61	Can add reasons	16	add_reasons
62	Can change reasons	16	change_reasons
63	Can delete reasons	16	delete_reasons
64	Can view reasons	16	view_reasons
65	Can add service types	17	add_servicetypes
66	Can change service types	17	change_servicetypes
67	Can delete service types	17	delete_servicetypes
68	Can view service types	17	view_servicetypes
69	Can add system user	18	add_systemuser
70	Can change system user	18	change_systemuser
71	Can delete system user	18	delete_systemuser
72	Can view system user	18	view_systemuser
73	Can add vehicles	19	add_vehicles
74	Can change vehicles	19	change_vehicles
75	Can delete vehicles	19	delete_vehicles
76	Can view vehicles	19	view_vehicles
77	Can add system user status records	20	add_systemuserstatusrecords
78	Can change system user status records	20	change_systemuserstatusrecords
79	Can delete system user status records	20	delete_systemuserstatusrecords
80	Can view system user status records	20	view_systemuserstatusrecords
81	Can add rate item	21	add_rateitem
82	Can change rate item	21	change_rateitem
83	Can delete rate item	21	delete_rateitem
84	Can view rate item	21	view_rateitem
85	Can add payments	22	add_payments
86	Can change payments	22	change_payments
87	Can delete payments	22	delete_payments
88	Can view payments	22	view_payments
89	Can add driver location	23	add_driverlocation
90	Can change driver location	23	change_driverlocation
91	Can delete driver location	23	delete_driverlocation
92	Can view driver location	23	view_driverlocation
93	Can add dispatch entry assets	24	add_dispatchentryassets
94	Can change dispatch entry assets	24	change_dispatchentryassets
95	Can delete dispatch entry assets	24	delete_dispatchentryassets
96	Can view dispatch entry assets	24	view_dispatchentryassets
97	Can add customer feedback	25	add_customerfeedback
98	Can change customer feedback	25	change_customerfeedback
99	Can delete customer feedback	25	delete_customerfeedback
100	Can view customer feedback	25	view_customerfeedback
101	Can add company pricing	26	add_companypricing
102	Can change company pricing	26	change_companypricing
103	Can delete company pricing	26	delete_companypricing
104	Can view company pricing	26	view_companypricing
105	Can add company features	27	add_companyfeatures
106	Can change company features	27	change_companyfeatures
107	Can delete company features	27	delete_companyfeatures
108	Can view company features	27	view_companyfeatures
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$600000$TXUMjwiVvPid0d4JfqUlU4$RrzVv5/c5ZNYz6hcSgzZqT7uRqcNjECLek8isS5w1L0=	2023-07-12 15:28:33.254319+05:30	t	rohan				t	t	2023-07-12 04:10:04.805867+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-07-12 04:11:06.045631+05:30	1	rkaba	3		4	2
2	2023-07-12 04:16:40.50164+05:30	0	AccountTypes object (0)	1	[{"added": {}}]	8	2
3	2023-07-12 04:17:33.960912+05:30	1	AccountTypes object (1)	1	[{"added": {}}]	8	2
4	2023-07-12 16:32:58.886148+05:30	2	AccountTypes object (2)	1	[{"added": {}}]	8	2
5	2023-07-12 16:33:05.667613+05:30	3	AccountTypes object (3)	1	[{"added": {}}]	8	2
6	2023-07-12 16:33:13.856003+05:30	4	AccountTypes object (4)	1	[{"added": {}}]	8	2
7	2023-07-12 16:33:20.062279+05:30	5	AccountTypes object (5)	1	[{"added": {}}]	8	2
8	2023-07-12 16:33:29.51729+05:30	6	AccountTypes object (6)	1	[{"added": {}}]	8	2
9	2023-07-12 16:33:36.361326+05:30	7	AccountTypes object (7)	1	[{"added": {}}]	8	2
10	2023-07-12 16:33:42.17193+05:30	8	AccountTypes object (8)	1	[{"added": {}}]	8	2
11	2023-07-12 16:33:47.60643+05:30	9	AccountTypes object (9)	1	[{"added": {}}]	8	2
12	2023-07-12 16:33:54.240651+05:30	10	AccountTypes object (10)	1	[{"added": {}}]	8	2
13	2023-07-12 16:34:01.110455+05:30	11	AccountTypes object (11)	1	[{"added": {}}]	8	2
14	2023-07-12 16:34:08.682749+05:30	12	AccountTypes object (12)	1	[{"added": {}}]	8	2
15	2023-07-12 16:34:14.340115+05:30	13	AccountTypes object (13)	1	[{"added": {}}]	8	2
16	2023-07-12 16:34:21.908487+05:30	14	AccountTypes object (14)	1	[{"added": {}}]	8	2
17	2023-07-12 16:34:30.059035+05:30	15	AccountTypes object (15)	1	[{"added": {}}]	8	2
18	2023-07-13 17:13:17.407011+05:30	1	Company object (1)	1	[{"added": {}}]	10	2
19	2023-07-13 17:14:55.075634+05:30	1	Accounts object (1)	1	[{"added": {}}]	7	2
20	2023-07-13 17:25:45.850342+05:30	1	Vehicles object (1)	1	[{"added": {}}]	19	2
21	2023-07-13 17:28:40.597975+05:30	1	RateItem object (1)	1	[{"added": {}}]	21	2
22	2023-07-13 17:32:27.813545+05:30	1	Reasons object (1)	1	[{"added": {}}]	16	2
23	2023-07-13 17:34:42.796523+05:30	1	Reasons object (1)	3		16	2
24	2023-07-13 17:38:57.899815+05:30	1	RateItem object (1)	3		21	2
25	2023-07-13 17:43:56.448454+05:30	1	Vehicles object (1)	3		19	2
26	2023-07-13 17:51:36.817116+05:30	1	Accounts object (1)	3		7	2
27	2023-07-13 18:01:26.968821+05:30	1	Company object (1)	3		10	2
28	2023-07-13 18:44:10.285791+05:30	15	Accounts object (15)	3		7	2
29	2023-07-13 18:49:55.338921+05:30	16	AccountTypes object (16)	3		8	2
30	2023-07-14 03:14:59.193075+05:30	16	AccountTypes object (16)	3		8	2
31	2023-07-14 03:19:04.655376+05:30	17	AccountTypes object (17)	1	[{"added": {}}]	8	2
32	2023-07-14 03:19:50.898341+05:30	17	AccountTypes object (17)	3		8	2
33	2023-07-14 03:19:55.64529+05:30	16	AccountTypes object (16)	3		8	2
34	2023-07-18 01:42:56.779962+05:30	1	DriverLocation object (1)	1	[{"added": {}}]	23	2
35	2023-07-18 01:44:06.285558+05:30	2	DriverLocation object (2)	1	[{"added": {}}]	23	2
36	2023-07-18 01:45:07.793306+05:30	3	DriverLocation object (3)	1	[{"added": {}}]	23	2
37	2023-07-18 02:43:33.208945+05:30	1	DriverLocation object (1)	2	[{"changed": {"fields": ["Latitude", "Longitude"]}}]	23	2
38	2023-07-18 02:44:25.471484+05:30	2	DriverLocation object (2)	2	[{"changed": {"fields": ["Latitude", "Longitude"]}}]	23	2
39	2023-07-18 02:45:19.674937+05:30	3	DriverLocation object (3)	2	[{"changed": {"fields": ["Latitude", "Longitude"]}}]	23	2
40	2023-07-18 02:46:21.429821+05:30	4	DriverLocation object (4)	1	[{"added": {}}]	23	2
41	2023-07-18 02:47:17.928916+05:30	5	DriverLocation object (5)	1	[{"added": {}}]	23	2
42	2023-07-18 02:48:05.086738+05:30	6	DriverLocation object (6)	1	[{"added": {}}]	23	2
43	2023-07-18 02:48:58.581638+05:30	7	DriverLocation object (7)	1	[{"added": {}}]	23	2
44	2023-07-18 02:49:51.657554+05:30	8	DriverLocation object (8)	1	[{"added": {}}]	23	2
45	2023-07-18 04:10:17.094151+05:30	9	DriverLocation object (9)	1	[{"added": {}}]	23	2
46	2023-07-18 04:11:20.659709+05:30	10	DriverLocation object (10)	1	[{"added": {}}]	23	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	A2Zbackend	accounts
8	A2Zbackend	accounttypes
9	A2Zbackend	cases
10	A2Zbackend	company
11	A2Zbackend	customers
12	A2Zbackend	dispatchentry
13	A2Zbackend	dispatchstatus
14	A2Zbackend	features
15	A2Zbackend	invoices
16	A2Zbackend	reasons
17	A2Zbackend	servicetypes
18	A2Zbackend	systemuser
19	A2Zbackend	vehicles
20	A2Zbackend	systemuserstatusrecords
21	A2Zbackend	rateitem
22	A2Zbackend	payments
23	A2Zbackend	driverlocation
24	A2Zbackend	dispatchentryassets
25	A2Zbackend	customerfeedback
26	A2Zbackend	companypricing
27	A2Zbackend	companyfeatures
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	A2Zbackend	0001_initial	2023-07-11 20:51:22.379822+05:30
2	contenttypes	0001_initial	2023-07-11 20:51:22.445691+05:30
3	auth	0001_initial	2023-07-11 20:51:22.481289+05:30
4	admin	0001_initial	2023-07-11 20:51:22.522213+05:30
5	admin	0002_logentry_remove_auto_add	2023-07-11 20:51:22.53418+05:30
6	admin	0003_logentry_add_action_flag_choices	2023-07-11 20:51:22.543157+05:30
7	contenttypes	0002_remove_content_type_name	2023-07-11 20:51:22.572082+05:30
8	auth	0002_alter_permission_name_max_length	2023-07-11 20:51:22.57646+05:30
9	auth	0003_alter_user_email_max_length	2023-07-11 20:51:22.584539+05:30
10	auth	0004_alter_user_username_opts	2023-07-11 20:51:22.591704+05:30
11	auth	0005_alter_user_last_login_null	2023-07-11 20:51:22.599686+05:30
12	auth	0006_require_contenttypes_0002	2023-07-11 20:51:22.601683+05:30
13	auth	0007_alter_validators_add_error_messages	2023-07-11 20:51:22.613327+05:30
14	auth	0008_alter_user_username_max_length	2023-07-11 20:51:22.624295+05:30
15	auth	0009_alter_user_last_name_max_length	2023-07-11 20:51:22.631414+05:30
16	auth	0010_alter_group_name_max_length	2023-07-11 20:51:22.64039+05:30
17	auth	0011_update_proxy_permissions	2023-07-11 20:51:22.65618+05:30
18	sessions	0001_initial	2023-07-11 20:51:22.664162+05:30
19	A2Zbackend	0002_remove_accounttypes_create_date	2023-07-12 02:32:40.905599+05:30
20	A2Zbackend	0003_auto_20230711_2207	2023-07-12 03:37:20.651977+05:30
21	A2Zbackend	0004_rename_free_trail_date_left_company_free_trial_date_left	2023-07-12 15:27:48.42286+05:30
22	auth	0012_alter_user_first_name_max_length	2023-07-12 15:27:48.440811+05:30
23	A2Zbackend	0005_alter_company_id_alter_companyfeatures_id	2023-07-12 15:28:00.458095+05:30
24	A2Zbackend	0006_remove_company_free_trial_date_left	2023-07-12 17:28:58.8853+05:30
25	A2Zbackend	0007_alter_vehicles_vehicle_type	2023-07-13 17:23:28.948985+05:30
26	A2Zbackend	0008_alter_company_address	2023-07-13 17:23:28.96033+05:30
27	A2Zbackend	0009_alter_vehicles_vehicle_type	2023-07-13 17:23:56.462453+05:30
28	A2Zbackend	0010_remove_vehicles_make_id_remove_vehicles_model_and_more	2023-07-13 17:25:21.981807+05:30
29	A2Zbackend	0011_remove_rateitem_extended_rate_item_and_more	2023-07-13 17:27:00.647345+05:30
30	A2Zbackend	0012_remove_accounts_alternate_phone	2023-07-13 17:48:13.59962+05:30
31	A2Zbackend	0013_alter_company_address	2023-07-13 18:03:42.076521+05:30
32	A2Zbackend	0014_remove_driverlocation_client_version_id	2023-07-18 01:41:49.633956+05:30
33	A2Zbackend	0015_alter_driverlocation_table	2023-07-18 02:17:44.064066+05:30
34	A2Zbackend	0016_alter_driverlocation_table	2023-07-18 02:18:33.266281+05:30
35	A2Zbackend	0017_driverlocation_distance	2023-07-18 02:20:25.388039+05:30
36	A2Zbackend	0018_remove_driverlocation_distance_and_more	2023-07-18 02:27:01.409698+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
38ihdwftxhkm98bus7axjpzhi7lo11gi	.eJxVjDsOwjAQBe_iGln-xJ9Q0nMGa3e9xgHkSHFSIe4OkVJA-2bmvUSCba1p67ykKYuzMOL0uyHQg9sO8h3abZY0t3WZUO6KPGiX1znz83K4fwcVev3WYJGjLd4hs9JUjCo4eBoJvHWONWmEED1bYznbYQzBo1MFPFAg46J4fwAC2Dhf:1qJRSr:3IJw8rBOY5ynJwOwuV-I0NgcJs846Yz5T_fiSlDDCDw	2023-07-26 15:28:33.25532+05:30
\.


--
-- Name: A2Zbackend_accounts_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_accounts_account_id_seq"', 15, true);


--
-- Name: A2Zbackend_cases_case_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_cases_case_id_seq"', 1, false);


--
-- Name: A2Zbackend_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_company_id_seq"', 1, true);


--
-- Name: A2Zbackend_companyfeatures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_companyfeatures_id_seq"', 1, false);


--
-- Name: A2Zbackend_companypricing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_companypricing_id_seq"', 1, false);


--
-- Name: A2Zbackend_customerfeedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_customerfeedback_id_seq"', 1, false);


--
-- Name: A2Zbackend_customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_customers_customer_id_seq"', 1, false);


--
-- Name: A2Zbackend_dispatchentry_dispatch_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_dispatchentry_dispatch_entry_id_seq"', 1, false);


--
-- Name: A2Zbackend_dispatchentryassets_asset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_dispatchentryassets_asset_id_seq"', 1, false);


--
-- Name: A2Zbackend_dispatchstatus_dispatch_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_dispatchstatus_dispatch_status_id_seq"', 1, false);


--
-- Name: A2Zbackend_driverlocation_driverLocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_driverlocation_driverLocation_id_seq"', 10, true);


--
-- Name: A2Zbackend_features_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_features_feature_id_seq"', 1, false);


--
-- Name: A2Zbackend_invoices_invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_invoices_invoice_id_seq"', 1, false);


--
-- Name: A2Zbackend_payments_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_payments_payment_id_seq"', 1, false);


--
-- Name: A2Zbackend_rateitem_rate_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_rateitem_rate_item_id_seq"', 1, true);


--
-- Name: A2Zbackend_reasons_reason_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_reasons_reason_id_seq"', 1, true);


--
-- Name: A2Zbackend_servicetypes_service_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_servicetypes_service_type_id_seq"', 1, false);


--
-- Name: A2Zbackend_systemuser_csr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_systemuser_csr_id_seq"', 1, false);


--
-- Name: A2Zbackend_systemuserstatusrecords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_systemuserstatusrecords_id_seq"', 1, false);


--
-- Name: A2Zbackend_vehicles_vehicle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."A2Zbackend_vehicles_vehicle_id_seq"', 1, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 108, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 46, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: A2Zbackend_accounts A2Zbackend_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_accounts"
    ADD CONSTRAINT "A2Zbackend_accounts_pkey" PRIMARY KEY (account_id);


--
-- Name: A2Zbackend_accounttypes A2Zbackend_accounttypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_accounttypes"
    ADD CONSTRAINT "A2Zbackend_accounttypes_pkey" PRIMARY KEY (account_type_id);


--
-- Name: A2Zbackend_cases A2Zbackend_cases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_cases"
    ADD CONSTRAINT "A2Zbackend_cases_pkey" PRIMARY KEY (case_id);


--
-- Name: A2Zbackend_company A2Zbackend_company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_company"
    ADD CONSTRAINT "A2Zbackend_company_pkey" PRIMARY KEY (id);


--
-- Name: A2Zbackend_companyfeatures A2Zbackend_companyfeatures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companyfeatures"
    ADD CONSTRAINT "A2Zbackend_companyfeatures_pkey" PRIMARY KEY (id);


--
-- Name: A2Zbackend_companypricing A2Zbackend_companypricing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companypricing"
    ADD CONSTRAINT "A2Zbackend_companypricing_pkey" PRIMARY KEY (id);


--
-- Name: A2Zbackend_customerfeedback A2Zbackend_customerfeedback_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_customerfeedback"
    ADD CONSTRAINT "A2Zbackend_customerfeedback_pkey" PRIMARY KEY (id);


--
-- Name: A2Zbackend_customers A2Zbackend_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_customers"
    ADD CONSTRAINT "A2Zbackend_customers_pkey" PRIMARY KEY (customer_id);


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatchentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatchentry_pkey" PRIMARY KEY (dispatch_entry_id);


--
-- Name: A2Zbackend_dispatchentryassets A2Zbackend_dispatchentryassets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentryassets"
    ADD CONSTRAINT "A2Zbackend_dispatchentryassets_pkey" PRIMARY KEY (asset_id);


--
-- Name: A2Zbackend_dispatchstatus A2Zbackend_dispatchstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchstatus"
    ADD CONSTRAINT "A2Zbackend_dispatchstatus_pkey" PRIMARY KEY (dispatch_status_id);


--
-- Name: A2Zbackend_driverlocation A2Zbackend_driverlocation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_driverlocation"
    ADD CONSTRAINT "A2Zbackend_driverlocation_pkey" PRIMARY KEY ("driverLocation_id");


--
-- Name: A2Zbackend_features A2Zbackend_features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_features"
    ADD CONSTRAINT "A2Zbackend_features_pkey" PRIMARY KEY (feature_id);


--
-- Name: A2Zbackend_invoices A2Zbackend_invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_invoices"
    ADD CONSTRAINT "A2Zbackend_invoices_pkey" PRIMARY KEY (invoice_id);


--
-- Name: A2Zbackend_payments A2Zbackend_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_payments"
    ADD CONSTRAINT "A2Zbackend_payments_pkey" PRIMARY KEY (payment_id);


--
-- Name: A2Zbackend_rateitem A2Zbackend_rateitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_rateitem"
    ADD CONSTRAINT "A2Zbackend_rateitem_pkey" PRIMARY KEY (rate_item_id);


--
-- Name: A2Zbackend_reasons A2Zbackend_reasons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_reasons"
    ADD CONSTRAINT "A2Zbackend_reasons_pkey" PRIMARY KEY (reason_id);


--
-- Name: A2Zbackend_servicetypes A2Zbackend_servicetypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_servicetypes"
    ADD CONSTRAINT "A2Zbackend_servicetypes_pkey" PRIMARY KEY (service_type_id);


--
-- Name: A2Zbackend_systemuser A2Zbackend_systemuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_systemuser"
    ADD CONSTRAINT "A2Zbackend_systemuser_pkey" PRIMARY KEY (csr_id);


--
-- Name: A2Zbackend_systemuserstatusrecords A2Zbackend_systemuserstatusrecords_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_systemuserstatusrecords"
    ADD CONSTRAINT "A2Zbackend_systemuserstatusrecords_pkey" PRIMARY KEY (id);


--
-- Name: A2Zbackend_vehicles A2Zbackend_vehicles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_vehicles"
    ADD CONSTRAINT "A2Zbackend_vehicles_pkey" PRIMARY KEY (vehicle_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: A2Zbackend_cases_csr_id_id_9af22cf7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_cases_csr_id_id_9af22cf7" ON public."A2Zbackend_cases" USING btree (csr_id_id);


--
-- Name: A2Zbackend_cases_dispatch_entry_id_id_eb0f2a3b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_cases_dispatch_entry_id_id_eb0f2a3b" ON public."A2Zbackend_cases" USING btree (dispatch_entry_id_id);


--
-- Name: A2Zbackend_companyfeatures_company_id_id_7c70d9c7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_companyfeatures_company_id_id_7c70d9c7" ON public."A2Zbackend_companyfeatures" USING btree (company_id_id);


--
-- Name: A2Zbackend_companyfeatures_feature_id_id_42b25d06; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_companyfeatures_feature_id_id_42b25d06" ON public."A2Zbackend_companyfeatures" USING btree (feature_id_id);


--
-- Name: A2Zbackend_companypricing_company_id_id_05d923a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_companypricing_company_id_id_05d923a0" ON public."A2Zbackend_companypricing" USING btree (company_id_id);


--
-- Name: A2Zbackend_companypricing_rate_item_id_id_a53c29e6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_companypricing_rate_item_id_id_a53c29e6" ON public."A2Zbackend_companypricing" USING btree (rate_item_id_id);


--
-- Name: A2Zbackend_customerfeedback_customer_id_id_0d5d0161; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_customerfeedback_customer_id_id_0d5d0161" ON public."A2Zbackend_customerfeedback" USING btree (customer_id_id);


--
-- Name: A2Zbackend_dispatchentry_account_id_id_f12cf27e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_account_id_id_f12cf27e" ON public."A2Zbackend_dispatchentry" USING btree (account_id_id);


--
-- Name: A2Zbackend_dispatchentry_asset_id_id_340aeebb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_asset_id_id_340aeebb" ON public."A2Zbackend_dispatchentry" USING btree (asset_id_id);


--
-- Name: A2Zbackend_dispatchentry_case_id_c466ef43; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_case_id_c466ef43" ON public."A2Zbackend_dispatchentry" USING btree (case_id);


--
-- Name: A2Zbackend_dispatchentry_company_id_id_70bd87ec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_company_id_id_70bd87ec" ON public."A2Zbackend_dispatchentry" USING btree (company_id_id);


--
-- Name: A2Zbackend_dispatchentry_csr_id_id_4cecb260; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_csr_id_id_4cecb260" ON public."A2Zbackend_dispatchentry" USING btree (csr_id_id);


--
-- Name: A2Zbackend_dispatchentry_customer_id_id_0786aef6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_customer_id_id_0786aef6" ON public."A2Zbackend_dispatchentry" USING btree (customer_id_id);


--
-- Name: A2Zbackend_dispatchentry_dispatch_status_id_id_03703980; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_dispatch_status_id_id_03703980" ON public."A2Zbackend_dispatchentry" USING btree (dispatch_status_id_id);


--
-- Name: A2Zbackend_dispatchentry_invoice_id_id_c158ff81; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_invoice_id_id_c158ff81" ON public."A2Zbackend_dispatchentry" USING btree (invoice_id_id);


--
-- Name: A2Zbackend_dispatchentry_payment_id_id_09db42ae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_payment_id_id_09db42ae" ON public."A2Zbackend_dispatchentry" USING btree (payment_id_id);


--
-- Name: A2Zbackend_dispatchentry_payment_status_id_62e8bad0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_payment_status_id_62e8bad0" ON public."A2Zbackend_dispatchentry" USING btree (payment_status_id);


--
-- Name: A2Zbackend_dispatchentry_reason_id_id_cb318221; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_reason_id_id_cb318221" ON public."A2Zbackend_dispatchentry" USING btree (reason_id_id);


--
-- Name: A2Zbackend_dispatchentry_service_type_id_id_3a1489bd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentry_service_type_id_id_3a1489bd" ON public."A2Zbackend_dispatchentry" USING btree (service_type_id_id);


--
-- Name: A2Zbackend_dispatchentryassets_customer_id_id_3e632901; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentryassets_customer_id_id_3e632901" ON public."A2Zbackend_dispatchentryassets" USING btree (customer_id_id);


--
-- Name: A2Zbackend_dispatchentryassets_dispatch_entry_id_id_36cb452b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_dispatchentryassets_dispatch_entry_id_id_36cb452b" ON public."A2Zbackend_dispatchentryassets" USING btree (dispatch_entry_id_id);


--
-- Name: A2Zbackend_driverlocation_company_id_id_2d21d460; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_driverlocation_company_id_id_2d21d460" ON public."A2Zbackend_driverlocation" USING btree (company_id_id);


--
-- Name: A2Zbackend_payments_invoice_id_id_4655ede0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_payments_invoice_id_id_4655ede0" ON public."A2Zbackend_payments" USING btree (invoice_id_id);


--
-- Name: A2Zbackend_rateitem_account_id_id_73996c79; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_rateitem_account_id_id_73996c79" ON public."A2Zbackend_rateitem" USING btree (account_id_id);


--
-- Name: A2Zbackend_rateitem_vehicle_id_id_fdf5cede; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_rateitem_vehicle_id_id_fdf5cede" ON public."A2Zbackend_rateitem" USING btree (vehicle_id_id);


--
-- Name: A2Zbackend_systemuserstatu_dispatch_entry_id_id_89fff34b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "A2Zbackend_systemuserstatu_dispatch_entry_id_id_89fff34b" ON public."A2Zbackend_systemuserstatusrecords" USING btree (dispatch_entry_id_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: A2Zbackend_cases A2Zbackend_cases_csr_id_id_9af22cf7_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_cases"
    ADD CONSTRAINT "A2Zbackend_cases_csr_id_id_9af22cf7_fk_A2Zbacken" FOREIGN KEY (csr_id_id) REFERENCES public."A2Zbackend_systemuser"(csr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_cases A2Zbackend_cases_dispatch_entry_id_id_eb0f2a3b_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_cases"
    ADD CONSTRAINT "A2Zbackend_cases_dispatch_entry_id_id_eb0f2a3b_fk_A2Zbacken" FOREIGN KEY (dispatch_entry_id_id) REFERENCES public."A2Zbackend_dispatchentry"(dispatch_entry_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_companyfeatures A2Zbackend_companyfe_feature_id_id_42b25d06_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companyfeatures"
    ADD CONSTRAINT "A2Zbackend_companyfe_feature_id_id_42b25d06_fk_A2Zbacken" FOREIGN KEY (feature_id_id) REFERENCES public."A2Zbackend_features"(feature_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_companyfeatures A2Zbackend_companyfeatures_company_id_id_7c70d9c7_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companyfeatures"
    ADD CONSTRAINT "A2Zbackend_companyfeatures_company_id_id_7c70d9c7_fk" FOREIGN KEY (company_id_id) REFERENCES public."A2Zbackend_company"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_companypricing A2Zbackend_companypr_rate_item_id_id_a53c29e6_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companypricing"
    ADD CONSTRAINT "A2Zbackend_companypr_rate_item_id_id_a53c29e6_fk_A2Zbacken" FOREIGN KEY (rate_item_id_id) REFERENCES public."A2Zbackend_rateitem"(rate_item_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_companypricing A2Zbackend_companypricing_company_id_id_05d923a0_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_companypricing"
    ADD CONSTRAINT "A2Zbackend_companypricing_company_id_id_05d923a0_fk" FOREIGN KEY (company_id_id) REFERENCES public."A2Zbackend_company"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_customerfeedback A2Zbackend_customerf_customer_id_id_0d5d0161_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_customerfeedback"
    ADD CONSTRAINT "A2Zbackend_customerf_customer_id_id_0d5d0161_fk_A2Zbacken" FOREIGN KEY (customer_id_id) REFERENCES public."A2Zbackend_customers"(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_account_id_id_f12cf27e_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_account_id_id_f12cf27e_fk_A2Zbacken" FOREIGN KEY (account_id_id) REFERENCES public."A2Zbackend_accounts"(account_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_asset_id_id_340aeebb_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_asset_id_id_340aeebb_fk_A2Zbacken" FOREIGN KEY (asset_id_id) REFERENCES public."A2Zbackend_dispatchentryassets"(asset_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_case_id_c466ef43_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_case_id_c466ef43_fk_A2Zbacken" FOREIGN KEY (case_id) REFERENCES public."A2Zbackend_cases"(case_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_csr_id_id_4cecb260_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_csr_id_id_4cecb260_fk_A2Zbacken" FOREIGN KEY (csr_id_id) REFERENCES public."A2Zbackend_systemuser"(csr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_customer_id_id_0786aef6_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_customer_id_id_0786aef6_fk_A2Zbacken" FOREIGN KEY (customer_id_id) REFERENCES public."A2Zbackend_customers"(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentryassets A2Zbackend_dispatche_customer_id_id_3e632901_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentryassets"
    ADD CONSTRAINT "A2Zbackend_dispatche_customer_id_id_3e632901_fk_A2Zbacken" FOREIGN KEY (customer_id_id) REFERENCES public."A2Zbackend_customers"(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentryassets A2Zbackend_dispatche_dispatch_entry_id_id_36cb452b_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentryassets"
    ADD CONSTRAINT "A2Zbackend_dispatche_dispatch_entry_id_id_36cb452b_fk_A2Zbacken" FOREIGN KEY (dispatch_entry_id_id) REFERENCES public."A2Zbackend_dispatchentry"(dispatch_entry_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_dispatch_status_id_i_03703980_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_dispatch_status_id_i_03703980_fk_A2Zbacken" FOREIGN KEY (dispatch_status_id_id) REFERENCES public."A2Zbackend_dispatchstatus"(dispatch_status_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_invoice_id_id_c158ff81_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_invoice_id_id_c158ff81_fk_A2Zbacken" FOREIGN KEY (invoice_id_id) REFERENCES public."A2Zbackend_invoices"(invoice_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_payment_id_id_09db42ae_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_payment_id_id_09db42ae_fk_A2Zbacken" FOREIGN KEY (payment_id_id) REFERENCES public."A2Zbackend_payments"(payment_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_payment_status_id_62e8bad0_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_payment_status_id_62e8bad0_fk_A2Zbacken" FOREIGN KEY (payment_status_id) REFERENCES public."A2Zbackend_payments"(payment_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_reason_id_id_cb318221_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_reason_id_id_cb318221_fk_A2Zbacken" FOREIGN KEY (reason_id_id) REFERENCES public."A2Zbackend_reasons"(reason_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatche_service_type_id_id_3a1489bd_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatche_service_type_id_id_3a1489bd_fk_A2Zbacken" FOREIGN KEY (service_type_id_id) REFERENCES public."A2Zbackend_servicetypes"(service_type_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_dispatchentry A2Zbackend_dispatchentry_company_id_id_70bd87ec_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_dispatchentry"
    ADD CONSTRAINT "A2Zbackend_dispatchentry_company_id_id_70bd87ec_fk" FOREIGN KEY (company_id_id) REFERENCES public."A2Zbackend_company"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_driverlocation A2Zbackend_driverlocation_company_id_id_2d21d460_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_driverlocation"
    ADD CONSTRAINT "A2Zbackend_driverlocation_company_id_id_2d21d460_fk" FOREIGN KEY (company_id_id) REFERENCES public."A2Zbackend_company"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_payments A2Zbackend_payments_invoice_id_id_4655ede0_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_payments"
    ADD CONSTRAINT "A2Zbackend_payments_invoice_id_id_4655ede0_fk_A2Zbacken" FOREIGN KEY (invoice_id_id) REFERENCES public."A2Zbackend_invoices"(invoice_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_rateitem A2Zbackend_rateitem_account_id_id_73996c79_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_rateitem"
    ADD CONSTRAINT "A2Zbackend_rateitem_account_id_id_73996c79_fk_A2Zbacken" FOREIGN KEY (account_id_id) REFERENCES public."A2Zbackend_accounts"(account_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_rateitem A2Zbackend_rateitem_vehicle_id_id_fdf5cede_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_rateitem"
    ADD CONSTRAINT "A2Zbackend_rateitem_vehicle_id_id_fdf5cede_fk_A2Zbacken" FOREIGN KEY (vehicle_id_id) REFERENCES public."A2Zbackend_vehicles"(vehicle_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: A2Zbackend_systemuserstatusrecords A2Zbackend_systemuse_dispatch_entry_id_id_89fff34b_fk_A2Zbacken; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."A2Zbackend_systemuserstatusrecords"
    ADD CONSTRAINT "A2Zbackend_systemuse_dispatch_entry_id_id_89fff34b_fk_A2Zbacken" FOREIGN KEY (dispatch_entry_id_id) REFERENCES public."A2Zbackend_dispatchentry"(dispatch_entry_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

